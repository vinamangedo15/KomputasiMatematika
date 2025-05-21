clc
clear

% GAMBAR 1
% Membuat grid
% xd = linspace(-2, 2, 40);
% yd = linspace(-2, 2, 40);
% [x, y] = meshgrid(xd, yd);
% % Pesawat pertama: a1*x + b1*y + c1*z = d1
% a1 = 0; b1 = -2; c1 = 3; d1 = 1;
% z1 = (-a1*x - b1*y + d1)/c1;
% % Pesawat kedua: a2*x + b2*y + c2*z = d2
% a2 = 3; b2 = 6; c2 = -3; d2 = -2;
% z2 = (-a2*x - b2*y + d2)/c2;
% % Pesawat ketiga: a3*x + b3*y + c3*z = d3
% a3 = 6; b3 = 6; c3 = 3; d3 = 5;
% z3 = (-a3*x - b3*y + d3)/c3;
% % Plot permukaan
% figure;
% mesh(x, y, z1, 'EdgeColor', 'blue'); % Pesawat 1
% hold on;
% surf(x, y, z2, 'EdgeColor', 'red', 'FaceColor', 'red'); % Pesawat 2
% mesh(x, y, z3, 'EdgeColor', 'green'); % Pesawat 3
% % Tambahan tampilan
% title('Contoh Permukaan 3D');
% xlabel('x');
% ylabel('y');
% zlabel('z');
% legend('Pesawat 1', 'Pesawat 2', 'Pesawat 3');
% view(-125, 2);
% hold off;
% 
% 
% %GAMBAR 2
% %Membuat permukaan 3D
% [x, y] = meshgrid(linspace(-2*pi, 2*pi));
% z = y .* sin(x);
% mesh(x, y, z); 
% hold on;
% % Contoh soal:
% t = linspace(-2*pi, 2*pi, 100); 
% X = 1 + 0 * t; 
% Y = t;
% Z = sin(t);
% % Persamaan 2:
% X2 = 1 + 0 * t;
% Y2 = t;
% Z2 = sqrt(2)/2 * t;
% % Plot garis 3D
% plot3(X, Y, Z, 'LineWidth', 2);           
% plot3(X2, Y2, Z2, 'k', 'LineWidth', 2);   
% % Label sumbu
% xlabel('x');
% ylabel('y');
% zlabel('z');
% % Tampilan tambahan
% title('Contoh Plot 3D dengan Permukaan dan Kurva');
% legend('Permukaan mesh', 'Kurva 1', 'Kurva 2');
% grid on;
% hold off;
% 
% % GAMBAR 3
% % Membuat grid
% [x, y] = meshgrid(linspace(-2, 2));
% % Grafik pertama: 
% z1 = y .* exp(x.^2 - 5);
% mesh(x, y, z1); 
% hold on;
% % Label dan judul
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Contoh Plot 3D dari beberapa grafik');
% % Grafik kedua:
% z2 = 0.5 * x .* cos(y);
% mesh(x, y, z2); % Grafik kedua
% % Tahan plot
% hold off;

% GAMBAR 4 
% t =linspace(0, 2*pi, 200);
% r =sqrt(abs(5*cos(3*t)));
% x =r.*cos(t);
% y =r.*sin(t);
% fill(x, y, 'b'),
% axis('square')

% GAMBAR 5
% t =linspace(0,2*pi,200);
% f =exp(-0.6*t).*sin(t);
% stem(t, f)

% GAMBAR 6
% z = [0:0.2:1]';
% r = sin(5*pi*z) +3;
% cylinder(r)

% GAMBAR 7
% t = [0:0.1:6*pi];
% x = sqrt(t).*sin(3*t);
% y = sqrt(t).*cos(3*t);
% z = 0.8*t;
% plot3(x,y,z,'r','linewidth',1)
% grid on
% xlabel('x'); ylabel('y'); zlabel('z')

% GAMBAR 8
% [x,y]= meshgrid(0:.25:4*pi);
% z = sin(x+sin(y))-x/10;
% meshc(x,y,z); % surfc(x,y,z)

% GAMBAR 9
% [x,y]= meshgrid(-5:.4:5);
% z = abs(besselj(0,abs(x)+abs(y)))+.01;
% surfc(x,y,10*log10(z));

% Gambar 10
% theta = 0:.2:2*pi;
% x = sin(theta);
% y = cos(theta);
% z = sin(theta);
% stem3(x,y,z);
% hold on
% plot3(x,y,z,'r');
% plot(x,y)
% title('Sinus di sepanjang lingkaran unit')
% zlabel('sin(theta)')

% GAMBAR 11
% [x,y,z] = sphere(25);
% surf(x-3,y-2,z);
% hold on
% surf(x*2,y*2,z*2);

% GAMBAR 12
% [x,y,z]=ellipsoid(2,0,2,2,1,1);
% surf(x,y,z);
% axis([0 4 -2 2 0 4]);
% hold on
% contour(x,y,z);

% GAMBAR 13
x =linspace(-3*pi,3*pi,50);
%menevaluasi fungsi
r = cos(x).*sin(0.5*x).*exp((x.^2)/200);
r = r - min(r);
cylinder(r);
title('Radial');
ylabel('z')

% Gambar 14
% [x,y,z] = meshgrid(-2:.2:2, -2:.2:2, -2:.2:2);
% v = x .*exp(-x.^2 - y.^2 - z.^2);
% slice(x, y, z, v,1,0,0)
% axis tight

% GAMBAR 15
% load wind
% kec_angin = sqrt(u.^2 + v.^2 + w.^2);
% minz = min(z(:));
% maxz = max(z(:));
% midz =(maxz-minz)/2; 
% slice(x,y,z,kec_angin,[],[],[midz]);
% streamslice(x,y,z,u,v,w,[],[],[midz]);
% axis equal
% shading interp

% GAMBAR 16
% t = linspace(0,2*pi,200);
% r = sqrt(abs(3*sin(7*t)));
% y = r.*sin(t);
% bar(t, y)
% axis([0 pi 0 inf]);

% GAMBAR 17
% x = -4:0.25:4;
% y = -4:0.25:4;
% [x,y] = meshgrid(x,y);
% z = 2^(-1.5*sqrt(x.^2 +y.^2)).*cos(0.5*y).*sin(x);
% surf(x,y,z)
% xlabel('x');ylabel('y')
% zlabel('z')