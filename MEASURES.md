This file describes formulas for measuring
the length of edges in metric space and the
quality of tetrahedra in metric space.
They may look different from what certain
authors use, but they should be
mathematically equivalent to what most authors use.
You may need to do some algebra to confirm whether
or not your method agrees with these methods.

## Metric Edge Length (Omega_h)

For an edge with endpoint metric tensors `M_a`
and `M_b`, and vector `v` from one endpoint to
another, its metric length `l` is:

```
l = { if |l_a - l_b| > eps:  (l_a - l_b) / log(l_a / l_b)
    { else:                  (l_a + l_b) / 2.
l_a = sqrt(v^T * M_a * v)
l_b = sqrt(v^T * M_b * v)
```

Where `eps` is some arbitrary tolerance (Omega_h uses `1e-3`).

## Metric Quality (Omega_h)

For a tetrahedron `K=(E,C)` with corner vertices `C`
and edges `E`, real space volume `V`,
edge vectors `v(e), e in E`, and corner metric tensors `M(c), c in C`,
its quality in metric space `Q` is:

```
Q = ((V_m / V_eq)^(2/3))/l_msq
V_m = V * sqrt(det(M_max))
M_max = argmax over M(c), c in C: det(M(c))
l_msq = (sum over e in E: v(e)^T * M_max * v(e)) / 6
```

Where `V_eq` is the volume of a tetrahedron with all edge lengths
equal to one.
Notice that this uses a simpler formula for the
tetrahedron's edge lengths than what was done for
individual edge lengths, so that may be different
from what other authors do.
