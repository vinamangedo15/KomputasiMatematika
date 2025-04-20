clc
clear

% Nested
% ngantuk = input('Kamu ngantuk? (ya/tidak): ', 's');
% uang = input('Jumlah uang kamu : ');
% 
% isNgantuk = strcmpi(ngantuk, 'ya');
% 
% if isNgantuk
%     if uang >= 15000
%         disp('Beli kopi: robusta');
%     elseif uang < 15000
%         disp('Beli kopi: jenis lain (lebih murah)');
%     end
% else
%     disp('Tidak beli kopi (non-kopi)');
% end


% while
tabungan = input('Jumlah uang : ');
minggu = input('Minggu ke : ');

while tabungan < 100000
    fprintf('Minggu ke-%d: Nabung Rp10.000\n', minggu);
    tabungan = tabungan + 10000;
    minggu = minggu + 1;
end

fprintf('Total tabungan sekarang: Rp%d\n', tabungan);



