% Jawaban no 1
% Inisialisasi awal
x = zeros(4,1); % x1, x2, x3, x4
x_old = x;
tol = 1e-6;
max_iter = 100;

% Metode Jacobi
disp('Metode Jacobi: ');
for k = 1:max_iter
    x_new = zeros(4,1);
    x_new(1) = (1/10)*(6 - x_old(2) - 2*x_old(3));
    x_new(2) = (1/11)*(25 - x_old(1) - x_old(3) - 3*x_old(4));
    x_new(3) = (1/10)*(11 - 2*x_old(1) - x_old(2) - x_old(4));
    x_new(4) = (1/8)*(15 - 3*x_old(2) - x_old(3));

    if norm(x_new - x_old, inf) < tol
        break;
    end
    x_old = x_new;
end
 disp(x_new);

% Reset untuk Gauss-Seidel
x = zeros(4,1);

% Metode Gauss-Seidel
disp('Metode Gauss-Seidel: ');
for k = 1:max_iter
    x_old = x;

    x(1) = (1/10)*(6 - x(2) - 2*x(3));
    x(2) = (1/11)*(25 - x(1) - x(3) - 3*x(4));
    x(3) = (1/10)*(11 - 2*x(1) - x(2) - x(4));
    x(4) = (1/8)*(15 - 3*x(2) - x(3));

    if norm(x - x_old, inf) < tol
        break;
    end
end
disp(x);


% Jawaban nomor 2
% Fungsi yang diberikan
f = @(x) 2*x.^3;

% Batas integrasi
a = 0;
b = 1;

% Jumlah subinterval
n = 10;
h = (b - a) / n;

% Titik-titik pembagi
x = a:h:b;
y = f(x);

% Riemann kiri
riemann_kiri = h * sum(y(1:end-1));

% Riemann kanan
riemann_kanan = h * sum(y(2:end));

% Riemann tengah
x_tengah = a + h/2 : h : b - h/2;
y_tengah = f(x_tengah);
riemann_tengah = h * sum(y_tengah);

% Aturan trapesium
trapesium = h/2 * (y(1) + 2*sum(y(2:end-1)) + y(end));

% Tampilkan hasil 
disp(['Hasil integrasi dengan Riemann kiri     : ', num2str(riemann_kiri, '%.4f')]);
disp(['Hasil integrasi dengan Riemann kanan    : ', num2str(riemann_kanan, '%.4f')]);
disp(['Hasil integrasi dengan Riemann tengah   : ', num2str(riemann_tengah, '%.4f')]);
disp(['Hasil integrasi dengan aturan trapesium : ', num2str(trapesium, '%.4f')]);
