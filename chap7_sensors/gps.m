% gps.m
%   Compute the output of gps sensor
%
%  Revised:
%   3/5/2010 - RB 
%   5/14/2010 - RB

function y = gps(uu, P)

    % relabel the inputs
    Va      = uu(1);
%    alpha   = uu(2);
%    beta    = uu(3);
    wn      = uu(4);
    we      = uu(5);
%    wd      = uu(6);
    pn      = uu(7);
    pe      = uu(8);
    pd      = uu(9);
%    u       = uu(10);
%    v       = uu(11);
%    w       = uu(12);
%    phi     = uu(13);
%    theta   = uu(14);
    psi     = uu(15);
%    p       = uu(16);
%    q       = uu(17);
%    r       = uu(18);
    t       = uu(19);
    
 
    % construct North, East, and altitude GPS measurements
    y_gps_n = pn + rand(1);
    y_gps_e = pe + rand(1); 
    y_gps_h = -pd +rand(1); 
    
    % construct groundspeed and course measurements
    Vn = Va*cos(psi) + wn;
    Ve = Va*sin(psi) + we;
    y_gps_Vg     =  sqrt(Vn^2 + Ve^2) + rand(1);
    y_gps_course = atan2(Ve,Vn) + rand(1);

    % construct total output
    y = [...
        y_gps_n;...
        y_gps_e;...
        y_gps_h;...
        y_gps_Vg;...
        y_gps_course;...
        ];
    
end



