%
%EDISONYANG  20160902
%page 296 Param D
P.gravity = 9.8 %m/s^2

%physical parameters of airframe
P.mass = 1.56 %kg
P.Jx   = 0.1147 %kg-m^2
P.Jy   = 0.0576 %kg-m^2
P.Jz   = 0.1712 %kg-m^2
P.Jxz  = 0.0015 %kg-m^2

% initial conditions
P.pn0    = 0  % initial North position
P.pe0    = 0  % initial East position
P.pd0    = 0  % initial Down position (negative altitude)
P.u0     = 0  % initial velocity along body x-axis
P.v0     = 0  % initial velocity along body y-axis
P.w0     = 0  % initial velocity along body z-axis
P.phi0   = 0  % initial roll angle
P.theta0 = 0  % initial pitch angle
P.psi0   = 0  % initial yaw angle
P.p0     = 0  % initial body frame roll rate
P.q0     = 0  % initial body frame pitch rate
P.r0     = 0 % initial body frame yaw rate

