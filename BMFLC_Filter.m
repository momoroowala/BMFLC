t = 0:0.001:120; % time axis
Mpv = sin(t)+2*sin(2*t)+3*sin(3*t)+cos(t)+2*cos(2*t)+3*cos(3*t);
Mpi = 0.1*sin(30*t)+0.1*sin(35*t)+0.1*cos(30*t)+0.1*cos(35*t);
Mp = Mpv + Mpi;
plot(t, Mpv)
hold on;

w = zeros(2, 5);
mu = 0.0001;

eMp=0;
BMFLC = zeros(2,120001);
for theta = 0:0.001:120
    t=theta;
    phi = [sin(theta) sin(2*theta) sin(3*theta) sin(30*theta) sin(35*theta); cos(theta) cos(2*theta) cos(3*theta) cos(30*theta) cos(35*theta)];
    index = cast((theta*1000)+1, "int32");
    err = Mp(index) - eMp;
    eMp = 0;
    for i=1:3
        w(1, i) = w(1,i) + 2*mu*phi(1, i)*err;
        w(2, i) = w(2, i) + 2*mu*phi(2, i)*err;

        eMp = eMp + phi(1,i)*w(1,i)+phi(2,i)*w(2,i);
    end
    BMFLC(1,index) = theta;
    BMFLC(2,index) = eMp;
end
tPlot = 0:0.001:120;
plot(tPlot, BMFLC(2,:))
legend("Mpv", "BMFLC")
Mpv = sin(tPlot)+2*sin(2*tPlot)+3*sin(3*tPlot)+cos(tPlot)+2*cos(2*tPlot)+3*cos(3*tPlot);
Mpi = 0.1*sin(30*tPlot)+0.1*sin(35*tPlot)+0.1*cos(30*tPlot)+0.1*cos(35*tPlot);
Mp = Mpv + Mpi;
