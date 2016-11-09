
This is a test case for unstructured grid adaptation constrainted to
geometry.

The geometry is a unit cube with a cylinder of radius 0.5 centered
about the z-axis Boolean subtracted from the cube.

Geometry is provided in STEP format and EGADS with an initial
tessellation.

There are two metric fields,

```
   +   0       0      1    ++ h_z^-2   0      0    ++ h_z^-2   0      0    +
M =| cos(t) -sin(t)   0    ||   0    h_t^-2   0    ||   0    h_t^-2   0    |
   + sin(t)  cos(t)   0    ++   0      0    h_r^-2 ++   0      0    h_r^-2 +

where

h_z = 0.1
h_t = 0.1
h_r = h0 + 2*(0.1-h0)*abs(z-0.5)
h0 = 0.001
t is in the theta direction
r is radial direction
```

and 