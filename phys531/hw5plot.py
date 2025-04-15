import numpy as np
import matplotlib.pyplot as plt

# --- Parameters and Constants ---
hbar = 1.0
m = 0.5       # Chosen mass for PIB
L = np.pi     # Chosen width for PIB
omega = 2.0   # Chosen frequency for QHO

# Number of energy levels to calculate and plot
num_levels = 6

# --- Energy Calculation Functions ---

def infinite_well_energy(n, hbar_val, mass, length):
  """Calculates energy for Particle in Infinite Box."""
  # Input n is expected to be >= 1
  return (hbar_val**2 * np.pi**2 * n**2) / (2 * mass * length**2)

def harmonic_oscillator_energy(n, hbar_val, ang_freq):
  """Calculates energy for Quantum Harmonic Oscillator."""
  # Input n is expected to be >= 0
  return hbar_val * ang_freq * (n + 0.5)

# --- Calculate Energies ---
n_values_well = np.arange(1, num_levels + 1) # n = 1, 2, ..., num_levels
n_values_ho = np.arange(num_levels)         # n = 0, 1, ..., num_levels - 1

energies_well = infinite_well_energy(n_values_well, hbar, m, L)
energies_ho = harmonic_oscillator_energy(n_values_ho, hbar, omega)

# --- Plotting ---
fig, ax = plt.subplots(figsize=(8, 8))

# X-coordinates for the two systems
x_well = 1
x_ho = 2
width = 0.6 # Width of the horizontal lines representing energy levels

# Plot Infinite Well Levels
for i, E in enumerate(energies_well):
    n = n_values_well[i]
    ax.hlines(E, x_well - width/2, x_well + width/2, colors='dodgerblue', lw=2.5)
    # Add text label for n and Energy
    ax.text(x_well + width/2 + 0.1, E, f'n={n}, E={E:.2f}',
            verticalalignment='center', color='dodgerblue', fontsize=9)

# Plot Harmonic Oscillator Levels
for i, E in enumerate(energies_ho):
    n = n_values_ho[i]
    ax.hlines(E, x_ho - width/2, x_ho + width/2, colors='red', lw=2.5)
    # Add text label for n and Energy
    ax.text(x_ho + width/2 + 0.1, E, f'n={n}, E={E:.2f}',
            verticalalignment='center', color='red', fontsize=9)

# --- Plot Customization ---
ax.set_xticks([x_well, x_ho])
ax.set_xticklabels(['Infinite Well', 'Harmonic Oscillator'])
ax.set_xlim(0, 3.5) # Adjust x-limits to accommodate text labels
ax.tick_params(axis='x', which='major', length=0) # Hide x-axis ticks

ax.set_ylabel(rf'Energy (units: $\hbar=1, m=1/2, L=\pi, \omega=2$)') # Use raw string for LaTeX
ax.set_title('Comparison of Energy Spectra')
ax.grid(axis='y', linestyle='--', alpha=0.6)

# Adjust y-limit to ensure all labels fit
max_E = max(energies_well[-1], energies_ho[-1])
ax.set_ylim(0, max_E + 1.5) # Add some padding at the top

plt.tight_layout() # Adjust layout to prevent labels overlapping
plt.show()

# --- Print Comparison Summary ---
print("Comparison Summary:")
print(f"Parameters: hbar={hbar}, m={m}, L={L:.2f}, omega={omega}")
print("-" * 30)
print("Infinite Well Energies (E_n = n^2):")
for n, E in zip(n_values_well, energies_well):
    print(f"  n={n}, E = {E:.2f}")
print("\nHarmonic Oscillator Energies (E_n = 2n+1):")
for n, E in zip(n_values_ho, energies_ho):
    print(f"  n={n}, E = {E:.2f}")
print("-" * 30)
print("Observation:")
print(" - Ground state energy (n=1 for well, n=0 for HO) is the same (E=1) in these units.")
print(" - Infinite Well: Energy levels grow quadratically (1, 4, 9, ...), spacing increases linearly (3, 5, 7, ...).")
print(" - Harmonic Oscillator: Energy levels grow linearly (1, 3, 5, ...), spacing is constant (2).")
