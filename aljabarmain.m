%definisi fungsi
f = inline('x^2 - 3','x');

%interval [1,2]
X = [1 2];

%panggil fungsi Metodebagi2
[x, galat] = Metodebagi2(f, X);

%panggil fungsi PosisiPalsu
%[x, galat] = PosisiPalsu(f, X);

% Tampilkan hasil
% fprintf('Akar hampiran: %.6f\n', x);
% fprintf('Galat relatif: %.6f%%\n', galat);

disp('akar hampiran = ')
disp(x)
disp('galat = ')
disp(galat)