
This is a test case for unstructured grid adaptation constrainted to
geometry.

The geometry is a unit cube with a cylinder of radius 0.5 centered
about the z-axis Boolean subtracted from the cube.

Geometry is provided in STEP format and EGADS with an initial
tessellation.

There are three metric fields,

## linear

```
   + h_x^-2   0      0    +
M =|   0    h_y^-2   0    |
   +   0      0    h_z^-2 +

where

h_x = 0.1
h_y = 0.1
h_z = h0 + 2*(0.1-h0)*abs(z-0.5)
h0 = 0.001
```

## polar-1

```
   + cos(t) -sin(t)   0    ++ h_r^-2   0      0    ++ cos(t)  sin(t)   0    +
M =| sin(t)  cos(t)   0    ||   0    h_t^-2   0    ||-sin(t)  cos(t)   0    |
   +   0       0      1    ++   0      0    h_z^-2 ++   0       0      1    +

where

r=sqrt(x^2+y^2)
t=atan2(y,x)
h_z = 0.1
h_t = 0.1
h_r = h0 + 2*(0.1-h0)*abs(r-0.5)
h0 = 0.001
# t is in the theta direction
# r is radial direction
```

## polar-2

A modified polar-1 metric that is easier to satisfy with high-quality elements
by refining along theta near the layer,

```
d = (0.6 - r) * 10
h_t = (d < 0) ? (0.1) : (d * (1 / 40) + (1 - d) * 0.1)
```
