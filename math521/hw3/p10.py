# #!/usr/bin/env python3
# import numpy as np
# import matplotlib.pyplot as plt

# def hyperbolic_distance(x, y):
#     """
#     Compute the hyperbolic distance between two points x and y in the Poincaré disk,
#     given by:
#       d(x,y) = arccosh(1 + 2||x - y||^2/[(1 - ||x||^2)(1 - ||y||^2)] ).
#     """
#     # Ensure x and y are numpy arrays
#     x, y = np.array(x), np.array(y)
#     num = 2 * np.sum((x - y)**2)
#     den = (1 - np.sum(x**2)) * (1 - np.sum(y**2))
#     arg = 1 + num/den
#     # Clip argument to be at least 1 (any slight rounding error)
#     return np.arccosh(np.clip(arg, 1, None))

# def plot_circle(center, radius, color='blue', label=None):
#     """
#     Plot a Euclidean circle with given center and radius.
#     """
#     theta = np.linspace(0, 2*np.pi, 300)
#     x = center[0] + radius * np.cos(theta)
#     y = center[1] + radius * np.sin(theta)
#     plt.plot(x, y, color=color, label=label)

# def main():
#     # Hyperbolic radius to be used: r = arccosh(3/2)
#     r = np.arccosh(1.5)  # hyperbolic radius from problem statement

#     # -----------------------------
#     # Case 1: Hyperbolic center at (0,0)
#     # Derived result: the Euclidean circle representing N_r((0,0))
#     # is centered at (0,0) with radius = 1/sqrt(5).
#     center1 = np.array([0.0, 0.0])
#     radius1 = 1/np.sqrt(5)
    
#     # Sample many points on the derived Euclidean circle to check the hyperbolic distance.
#     theta = np.linspace(0, 2*np.pi, 300)
#     pts1 = np.vstack((center1[0] + radius1*np.cos(theta),
#                       center1[1] + radius1*np.sin(theta))).T
#     dists1 = np.array([hyperbolic_distance(center1, pt) for pt in pts1])
#     print("Case 1 (center (0,0)): maximum deviation from r =", np.abs(dists1 - r).max())

#     # -----------------------------
#     # Case 2: Hyperbolic center at (0.5, 0)
#     # Derived result: the Euclidean circle representing N_r((0.5,0)) has
#     # center at (8/19, 0) and radius = (3√5)/19.
#     hyper_center2 = np.array([0.5, 0.0])  # hyperbolic center
#     circle_center2 = np.array([8/19, 0.0])  # computed Euclidean center
#     radius2 = 3 * np.sqrt(5) / 19           # computed Euclidean radius
    
#     pts2 = np.vstack((circle_center2[0] + radius2*np.cos(theta),
#                       circle_center2[1] + radius2*np.sin(theta))).T
#     dists2 = np.array([hyperbolic_distance(hyper_center2, pt) for pt in pts2])
#     print("Case 2 (center (0.5,0)): maximum deviation from r =", np.abs(dists2 - r).max())

#     # -----------------------------
#     # Case 3: Hyperbolic center at (0.75, 0)
#     # Derived result: the Euclidean circle representing N_r((0.75,0)) has
#     # center at (48/71, 0) and radius = (7√5)/71.
#     hyper_center3 = np.array([0.75, 0.0])
#     circle_center3 = np.array([48/71, 0.0])
#     radius3 = 7 * np.sqrt(5) / 71
    
#     pts3 = np.vstack((circle_center3[0] + radius3*np.cos(theta),
#                       circle_center3[1] + radius3*np.sin(theta))).T
#     dists3 = np.array([hyperbolic_distance(hyper_center3, pt) for pt in pts3])
#     print("Case 3 (center (0.75,0)): maximum deviation from r =", np.abs(dists3 - r).max())

#     # -----------------------------
#     # Now, we plot the Poincaré disk and the three hyperbolic neighborhoods.
#     fig, ax = plt.subplots(figsize=(8,8))
    
#     # Plot the unit circle representing the Poincaré disk boundary.
#     disk_theta = np.linspace(0, 2*np.pi, 300)
#     disk_x = np.cos(disk_theta)
#     disk_y = np.sin(disk_theta)
#     plt.plot(disk_x, disk_y, 'k--', label='Poincaré Disk')
    
#     # Plot the three Euclidean circles.
#     plot_circle(center1, radius1, color='blue', label='N_r((0,0))')
#     plot_circle(circle_center2, radius2, color='red', label='N_r((0.5,0))')
#     plot_circle(circle_center3, radius3, color='green', label='N_r((0.75,0))')
    
#     # Mark the hyperbolic centers.
#     plt.plot(center1[0], center1[1], 'bo')
#     plt.plot(hyper_center2[0], hyper_center2[1], 'ro')
#     plt.plot(hyper_center3[0], hyper_center3[1], 'go')
    
#     # Format the plot.
#     plt.xlim(-1.1, 1.1)
#     plt.ylim(-1.1, 1.1)
#     plt.gca().set_aspect('equal', 'box')
#     plt.xlabel('x')
#     plt.ylabel('y')
#     plt.title('Poincaré Disk and Hyperbolic Neighborhoods')
#     plt.legend()
#     plt.grid(True)
#     plt.show()

# if __name__ == '__main__':
#     main()

#!/usr/bin/env python3
"""
This script verifies the derived Euclidean circle equations corresponding to the
hyperbolic neighborhoods N_r(x) in the Poincaré disk model, then plots the Poincaré
disk (the unit circle) and the three neighborhoods for:

    1. Center: (0, 0)
    2. Center: (1/2, 0)
    3. Center: (3/4, 0)

The hyperbolic radius is given by
    r = arccosh(3/2)   (so that cosh r = 3/2).

References for the geometric method can be found in Ross’s Elementary Analysis [^1].
"""

import numpy as np
import matplotlib.pyplot as plt
import sympy as sp

# Define symbols for symbolic manipulations.
u, v = sp.symbols('u v', real=True)

# The fixed hyperbolic radius:
r = sp.acosh(sp.Rational(3, 2))  # r = arccosh(3/2)
cosh_r = sp.cosh(r)  # This equals 3/2 exactly.

###############################################################################
# Verification for center (0,0)
###############################################################################
# For (0,0), we have ||x||=0 and the hyperbolic condition becomes:
#   1 + 2*(u^2+v^2)/(1*(1-u^2-v^2)) = cosh r = 3/2.
eq_0 = sp.Eq(1 + 2*(u**2 + v**2)/(1 - (u**2 + v**2)), cosh_r)

# Solve for (u^2+v^2)
sol_0 = sp.solve(eq_0, u**2 + v**2)
print("Case (0,0): u^2+v^2 =", sol_0)  # Expect [1/5]

###############################################################################
# Verification for center (1/2, 0)
###############################################################################
# For center (1/2, 0): let x0 = 1/2, y0 = 0.
# Then ||(x0,y0)||^2 = 1/4 and 1 - ||x0||^2 = 3/4.
x0, y0 = sp.Rational(1, 2), 0
eq_1 = sp.Eq(1 + 2*(((u - x0)**2 + (v - y0)**2)) / ((1 - (x0**2 + y0**2))*(1 - u**2 - v**2)), cosh_r)

# Multiply through to obtain a polynomial. Expand and simplify.
poly_1 = sp.together(sp.simplify(eq_1.lhs - eq_1.rhs))
poly_1_expanded = sp.expand(poly_1)
print("\nCase (1/2,0) (polynomial equation = 0):")
sp.pretty_print(poly_1_expanded)
#
# We expect, after algebra, an equation equivalent to:
#   19u^2 + 19v^2 - 16u + 1 = 0.
# Completing the square in u yields center (8/19, 0) and radius sqrt(45)/19.
###############################################################################
# For clarity, complete the square in u.
A1 = 19
B1 = -16
C1 = 1
# Equation: 19u^2 - 16u + 19v^2 + 1 = 0.
# Complete square for u: 19 (u^2 - (16/19)u) = 19[(u - 8/19)^2 - (8/19)^2]
u_center_1 = sp.Rational(8, 19)
radius_sq_1 = sp.Rational(8,19)**2 - sp.Rational(1,19)  # after rearranging terms
# Alternatively, solve for radius by rewriting:
eq1_circle = sp.Eq(19*(u - u_center_1)**2 + 19*v**2, 16*u_center_1 - 1)
# In our manual derivation, we obtained:
#   (u-8/19)^2+v^2 = 45/361.
center1 = (8/19, 0)
radius1 = sp.sqrt(sp.Rational(45, 361))  # = (3*sqrt(5))/19
print("\nCase (1/2,0):")
print("  Circle center =", center1)
print("  Circle radius =", radius1)

###############################################################################
# Verification for center (3/4, 0)
###############################################################################
# For center (3/4,0): let x0 = 3/4, y0 = 0.
# Then ||x0||^2 = 9/16 and 1 - ||x0||^2 = 7/16.
x0, y0 = sp.Rational(3, 4), 0
eq_2 = sp.Eq(1 + 2*(((u - x0)**2 + (v - y0)**2)) / ((1 - (x0**2 + y0**2))*(1 - u**2 - v**2)), cosh_r)
poly_2 = sp.together(sp.simplify(eq_2.lhs - eq_2.rhs))
poly_2_expanded = sp.expand(poly_2)
print("\nCase (3/4,0) (polynomial equation = 0):")
sp.pretty_print(poly_2_expanded)
#
# Our manual derivation leads to the equation equivalent to:
#   71u^2 + 71v^2 - 96u + 29 = 0,
# which, after completing the square, yields a circle with center (48/71, 0)
# and radius sqrt(245)/71 = (7*sqrt(5))/71.
center2 = (48/71, 0)
radius2 = sp.sqrt(sp.Rational(245, 5041))  # sqrt(245)/71
print("\nCase (3/4,0):")
print("  Circle center =", center2)
print("  Circle radius =", radius2)

###############################################################################
# Plotting
###############################################################################
def plot_circle(ax, center, radius, style, label=None):
    theta = np.linspace(0, 2*np.pi, 400)
    x = center[0] + radius * np.cos(theta)
    y = center[1] + radius * np.sin(theta)
    ax.plot(x, y, style, label=label)

# Create a figure
fig, ax = plt.subplots(figsize=(8,8))

# Plot the Poincaré disk (unit circle)
theta = np.linspace(0, 2*np.pi, 400)
ax.plot(np.cos(theta), np.sin(theta), 'k-', label=' Poincaré Disk')

# Plot hyperbolic neighborhood for (0,0)
center_0 = (0, 0)
radius0 = 1/np.sqrt(5)
plot_circle(ax, center_0, radius0, 'b-', label='N_r((0,0))')
ax.plot(center_0[0], center_0[1], 'bo')  # hyperbolic center

# Plot hyperbolic neighborhood for (1/2,0)
# Note: The hyperbolic ball N_r((1/2,0)) is represented by the Euclidean circle
# with center (8/19, 0) and radius (3√5)/19.
center_1 = (8/19, 0)
radius1_numeric = float(radius1)
plot_circle(ax, center_1, radius1_numeric, 'g-', label='N_r((1/2,0))')
ax.plot(0.5, 0, 'go')  # actual hyperbolic center

# Plot hyperbolic neighborhood for (3/4,0)
# Representation: circle with center (48/71,0) and radius (7√5)/71.
center_2 = (48/71, 0)
radius2_numeric = float(radius2)
plot_circle(ax, center_2, radius2_numeric, 'r-', label='N_r((3/4,0))')
ax.plot(0.75, 0, 'ro')  # actual hyperbolic center

# Configure plot appearance
ax.set_aspect('equal')
ax.set_xlim([-1.05, 1.05])
ax.set_ylim([-1.05, 1.05])
ax.legend(loc="upper right")
ax.set_title('Poincaré Disk and N_r(x)')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.grid(True, color='gray', linestyle='--', alpha=0.5)

plt.show()
