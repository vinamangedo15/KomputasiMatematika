% Latihan membuat grafik
% x = [-10:1:10]
% y = x.^2; % karena kita tidak menggunakan syms
% plot(x,y) % memunculkan grafik

% contoh
% x = linspace(0,2*pi);
% y = sin(x)
% plot(x,y)

% contoh
% xlabel('x')
% ylabel('sin(x)')
% title('Plot of the sine Function')

% Equel Maxima
% x = [0:0.001:1]
% y = (sin(5*pi*x)).^6
% plot(x,y,'*k')

% Decreasing
% x = [0:0.001:1]
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6
% plot(x,y,'hexagramm')

% Second Minima
% x = -4:0.1:4; %sumbu x
% y = -4:0.1:4; % sumbu y
% [X,Y] = meshgrid(x,y); % sebagai kanvas
% f = (0.5*(X.^4-16*X.^2+5*X)+0.5*(Y.^4-16*Y.^2+5*Y));
% figure(1)
% plot3(X,Y,f)
% figure(2)
% contour(X,Y,f)
% figure(3)
% contour3(X,Y,f,'>y')
% figure(4)
% surf(X,Y,f)
% figure(5)
% surfc(X,Y,f)
% figure(6)
% meshc(X,Y,f)

%six ham
x = -1.9:0.1:1.9; %sumbu x
y = -1.1:0.1:1.1; % sumbu y
[X,Y] = meshgrid(x,y); % sebagai kanvas
f = (4-2.1*X.^2+X.^4/3).*X.*Y+4*(-1+Y.^2).*Y.^2;
figure(1)
plot3(X,Y,f)
figure(2)
contour(X,Y,f)
figure(3)
contour3(X,Y,f,'>y')
figure(4)
surf(X,Y,f)
figure(5)
surfc(X,Y,f)
figure(6)
meshc(X,Y,f)