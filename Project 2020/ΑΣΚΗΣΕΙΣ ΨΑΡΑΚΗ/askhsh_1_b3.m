function askhsh_1_b3()

%Deigmaotlhpthmena shmata
deigmatolhpthmeno1=sin(10*pi*[0:0.002:1]);%Ts = 0.01 sec 
deigmatolhpthmeno2=sin(10*pi*[0:0.05:1]);%Ts = 0.1 sec
deigmatolhpthmeno3=sin(10*pi*[0:0.1:1]);%Ts = 0.2 sec  

reconstructed1 = spline([0:0.002:1], deigmatolhpthmeno1, [0:0.001:1]); 
figure;
plot( [0:0.001:1], reconstructed1);
title(['Anakataskeuh otan Ts= 0.01']);
grid on

MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]

reconstructed2 = spline([0:0.05:1], deigmatolhpthmeno2, [0:0.001:1]);
figure;
plot( [0:0.001:1], reconstructed2);
title(['Anakataskeuh  Ts= 0.1 ']);
grid on

MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]

reconstructed3 = spline( [0:0.1:1], deigmatolhpthmeno3, [0:0.001:1]);    
figure;
plot( [0:0.001:1], reconstructed3);
title(['Anakataskeuh  otan Ts= 0.2 ']);
grid on
MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]

end