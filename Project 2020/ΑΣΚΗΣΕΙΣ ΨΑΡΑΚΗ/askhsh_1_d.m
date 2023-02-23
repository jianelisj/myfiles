function askhsh_1_d

%Orizetai ena dianusma fo opws dinetai sthn ekfwnhsh ths askhshs
fo=[40 240 4040];

for i=1:length(fo)
    %Ean fo=20 tote sto arxiko shma ,antikathistatai auth h suxnothta
    %kai tautoxrona deigmatolhpteitai 
    if (fo(i)==40)
        deigmatolhpthmeno1 = sin(2*pi*fo(i)*[0:0.005:1]);
        figure;
        stem( deigmatolhpthmeno1);
        title('fo = 40');
        ylabel('Deigmatolhpthmeno Shma me Ts=0.005 sec');
    %Ean fo=120 tote sto arxiko shma ,antikathistatai auth h suxnothta
    %kai tautoxrona deigmatolhpteitai  
    elseif (fo(i)==240)
        deigmatolhpthmeno2 = sin(2*pi*fo(i)*[0:0.005:1]);
        figure;
        stem( deigmatolhpthmeno2);
        title('fo = 240');
        ylabel('Deigmatolhpthmeno Shma me Ts=0.005 sec');
    %Ean fo=2020 tote sto arxiko shma ,antikathistatai auth h suxnothta
    %kai tautoxrona deigmatolhpteitai   
    elseif (fo(i)==4040)
        deigmatolhpthmeno3 = sin(2*pi*fo(i)*[0:0.005:1]);
        figure;
        stem(deigmatolhpthmeno3);
        title('fo = 4040');
        ylabel('Deigmatolhpthmeno Shmame Ts=0.005 sec');
        
    end
end
    
    
    
end

