
This is a test case for unstructured grid adaptation constrainted to
geometry.

The geometry is a two cones with the same axis;
one cone is displaced 0.2 units in z.
The lower cone is substracted from the upper cone.
The domain is intersected with a box to remove periodicity.

Geometry is provided in STEP format and EGADS with an initial
tessellation.

The metric field is,

## uniform

```
   + h_x^-2   0      0    +
M =|   0    h_y^-2   0    |
   +   0      0    h_z^-2 +

where

h_x = 0.1
h_y = 0.1
h_z = 0.1
```
