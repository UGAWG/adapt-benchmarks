
z=0.5
h0 = 0.001
h_z = 0.1
h_t = 0.1
h_r = h0 + 2*(0.1-h0)*abs(z-0.5)

hs = [h_z^-2   0      0    ;
        0    h_t^-2   0    ;
        0      0    h_r^-2 ]

t = 0

R = [   0       0      1   ;
      cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ]

M = R*hs*R'

t = pi/4

R = [   0       0      1   ;
      cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ]

M = R*hs*R'

t = pi/2

R = [   0       0      1   ;
      cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ]

M = R*hs*R'

