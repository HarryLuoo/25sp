# combine_phys415_lectures.py
#
# Merge all “Phys415_Lecture-*.pdf” files into one document.
# Adds:
#   • First‑page Table of Contents (title + page numbers)
#   • Click‑able links on the TOC entries
#   • Sidebar outline/bookmarks for each lecture
#
# Dependencies:  pip install PyPDF2 reportlab

import os
import re
import tempfile
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter

from PyPDF2 import PdfMerger, PdfReader, PdfWriter
from PyPDF2.generic import AnnotationBuilder

# ─── CONFIG ────────────────────────────────────────────────────────────
FOLDER  = r"C:\Users\luoog\Documents\CLASSES\25sp\phys415\notes\lec"
PATTERN = re.compile(r"Phys415_Lecture-(\d+)_.*\.pdf$")
OUTPUT  = "Phys415_All_Lectures_Clickable.pdf"
TITLE   = r"Physics 415 Lecture Note \ All In One"
# ───────────────────────────────────────────────────────────────────────

# 1. Collect and sort lecture PDFs
lectures = []
for name in os.listdir(FOLDER):
    m = PATTERN.match(name)
    if m:
        lectures.append((int(m.group(1)), name))
lectures.sort(key=lambda t: t[0])
if not lectures:
    raise RuntimeError("No lecture PDFs found in the folder.")

# 2. Determine starting page index for each lecture (TOC is page 0)
start_page = {}
cursor = 1
for num, name in lectures:
    n_pages = len(PdfReader(os.path.join(FOLDER, name)).pages)
    start_page[num] = cursor
    cursor += n_pages

# 3. Create Table‑of‑Contents page and record link rectangles
toc_fd, toc_path = tempfile.mkstemp(suffix=".pdf")
os.close(toc_fd)

c = canvas.Canvas(toc_path, pagesize=letter)
w, h = letter

c.setFont("Helvetica-Bold", 18)
c.drawCentredString(w / 2, h - 72, TITLE)

c.setFont("Helvetica", 12)
x0  = 72
y   = h - 110
dy  = 18
links = {}                              # lecture_num → (x0,y0,x1,y1)

for num, _ in lectures:
    page_num = start_page[num] + 1      # human‑readable page
    text = f"Lecture {num}".ljust(20, '.') + f" {page_num}"
    c.drawString(x0, y, text)
    txt_w = c.stringWidth(text, "Helvetica", 12)
    links[num] = (x0, y - 2, x0 + txt_w, y + 14)
    y -= dy
    if y < 72:                          # simple single‑page TOC assumed
        break

c.showPage()
c.save()

# 4. Merge TOC + lectures (no imported outlines)
merger = PdfMerger()
merger.append(toc_path, import_outline=False)
for _, name in lectures:
    merger.append(os.path.join(FOLDER, name), import_outline=False)

tmp_fd, tmp_merge = tempfile.mkstemp(suffix=".pdf")
os.close(tmp_fd)
with open(tmp_merge, "wb") as f:
    merger.write(f)
merger.close()

# 5. Re‑open merged file and build final writer
reader = PdfReader(tmp_merge)
writer = PdfWriter()
writer.append_pages_from_reader(reader)

# Sidebar outline
for num, _ in lectures:
    writer.add_outline_item(f"Lecture {num}", start_page[num])

# Click‑able links on TOC
for num, rect in links.items():
    annot = AnnotationBuilder.link(rect=rect,
                                   border=None,
                                   target_page_index=start_page[num])
    writer.add_annotation(page_number=0, annotation=annot)

# 6. Save and clean up
out_path = os.path.join(FOLDER, OUTPUT)
with open(out_path, "wb") as f:
    writer.write(f)

os.remove(toc_path)
os.remove(tmp_merge)
print(f"✓ Created: {out_path}")
