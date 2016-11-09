
z=0.5
h0 = 0.001
h_z = 0.1
h_t = 0.1

x=0.5
y=0.0
r=sqrt(x^2+y^2)
t=atan2(y,x)
h_r = h0 + 2*(0.1-h0)*abs(r-0.5)
hs = [  h_r^-2   0      0    ;
         0     h_t^-2   0    ;
         0       0     h_z^-2 ]
R = [ cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ;
        0       0      1   ]
M = R*hs*(R')

x=0.0
y=0.5
r=sqrt(x^2+y^2)
t=atan2(y,x)
h_r = h0 + 2*(0.1-h0)*abs(r-0.5)
hs = [  h_r^-2   0      0    ;
         0     h_t^-2   0    ;
         0       0     h_z^-2 ]
R = [ cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ;
        0       0      1   ]
M = R*hs*(R')

x=1.0
y=1.0
r=sqrt(x^2+y^2)
t=atan2(y,x)
h_r = h0 + 2*(0.1-h0)*abs(r-0.5)
hs = [  h_r^-2   0      0    ;
         0     h_t^-2   0    ;
         0       0     h_z^-2 ]
R = [ cos(t) -sin(t)   0   ;
      sin(t)  cos(t)   0   ;
        0       0      1   ]
M = R*hs*(R')
