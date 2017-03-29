
For .mesh/meshb format items have an id.

Vertex

```
x1 y1 z1 id1
x2 y2 z2 id2
...
```

Id1, id2 are user specific data.
A value of 0 is suggested or a boundary condition if required

for the triangles and quads

```
i1 j1 k1 patchid1
i2 j2 k2 patchid2
...
```

where patchid are usually CAD surface ids, discrete surface ids, or surface domain ids.

For tet, set the id to 0 or a domain id when multiple connected components are present in the domain. 
Multiple ids may be used to descripbed also an interface (e.g., fluid/air)

```
i1 j1 k1 l1 id1
i2 j2 k2 l2 id2
...
```

Avoid to put the id number in this reference as it won’t be interpreted as it
in all our codes. 

