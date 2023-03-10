%ypologismos tis apokrisis syxnotitas
[H,W]=freqz([-0.5 1 -0.5],[0 1],512);
figure(1)
subplot(121)
plot(W,abs(H))
title('|H(e^j?)|')
xlabel('W (rad/sample)')
subplot(122)
plot(W,unwrap(angle((H))))
title('< H(e^j?)')
xlabel('W (rad/sample)')
%ypologismos tis eksodou
n=0:100;
x=(cos((pi/4)*n)-sin((pi/2)*n)+(- (1/2)).^n).*heaviside(n);
y=filter([-0.5 1 -0.5],1,x);
y=y(2:length(y));
y(length(y)+1)=0;
figure(2)
stem(n,x)
hold on;
stem(n,y,'g')
xlabel('n')
legend('input signal x','input signal y')