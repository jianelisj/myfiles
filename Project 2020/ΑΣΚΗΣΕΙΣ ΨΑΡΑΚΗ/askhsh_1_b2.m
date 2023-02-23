function askhsh_1_b2()


deigmatolhpthmeno1=sin(10*pi*[0:0.02:1]);%Ts = 0.01 sec 
deigmatolhpthmeno2=sin(10*pi*[0:0.05:1]);%Ts = 0.1 sec
deigmatolhpthmeno3=sin(10*pi*[0:0.1:1]);%Ts = 0.2 sec  

%arxikopoihseis
reconstructed1=zeros(1,1001);
reconstructed2=zeros(1,1001);
reconstructed3=zeros(1,1001);

dt=0:0.001:1;

for i=1:1001
    for j=1:51
        if((((dt(1,i)/0.01)-j)>=-1)&&(((dt(1,i)/0.01)-j)<=1))
            reconstructed1(1,i)=reconstructed1(1,i)+deigmatolhpthmeno1(1,j)*(1-abs((dt(1,i)/0.02)-j));
        end;
    end;
    for j=1:11
        if((((dt(1,i)/0.1)-j)>=-1)&&(((dt(1,i)/0.1)-j)<=1))
            reconstructed2(1,i)=reconstructed2(1,i)+deigmatolhpthmeno2(1,j)*(1-abs((dt(1,i)/0.05)-j));
        end;
    end;
    for j=1:5
        if((((dt(1,i)/0.2)-j)>=-1)&&(((dt(1,i)/0.2)-j)<=1))
            reconstructed3(1,i)=reconstructed3(1,i)+deigmatolhpthmeno3(1,j)*(1-abs((dt(1,i)/0.1)-j));
        end;
    end;
end;


figure;
plot([0:0.001:1],reconstructed1);
title(['Anakataskeuh otan Ts= 0.01 ']);
grid on

MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]

figure;
plot([0:0.001:1], reconstructed2);
title(['Anakataskeuh otan Ts= 0.1 ']);
grid on

MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]


figure;
plot([0:0.001:1], reconstructed3);
title(['Anakataskeuh  otan Ts= 0.2 ']);

grid on

MSE=[mean(reconstructed1.^2) mean(reconstructed1.^2) mean(reconstructed1.^2)]
STD=[std(reconstructed1) std(reconstructed1) std(reconstructed1)]


end
