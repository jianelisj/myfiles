function askhsh_1_a()

%Orizontai ta diakrita shmata pou paragontai kathe fora
deigmatolhpthmeno1=sin(10*pi*[0:0.02:1]);%Ts = 0.01 sec 
deigmatolhpthmeno2=sin(10*pi*[0:0.05:1]);%Ts = 0.1 sec
deigmatolhpthmeno3=sin(10*pi*[0:0.1:1]);%Ts = 0.2 sec


%Grafikes parastaseis diakritwn-deigmatolhpthmenwn shmatwn 
figure;
stem(deigmatolhpthmeno1,'k');
title('Deigmatolhpsia me Ts= 0.02');

figure;
stem(deigmatolhpthmeno2, 'k');
title('Deigmatolhpsia me Ts= 0.05');


figure;
stem(deigmatolhpthmeno3, 'k');
title('Deigmatolhpsia me Ts= 0.1 ');
