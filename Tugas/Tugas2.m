clc
clear

%  Contoh Nested
ngantuk = input('Kamu ngantuk? (ya/tidak): ', 's');
uang = input('Punya uang berapa? : ');

isNgantuk = strcmpi(ngantuk, 'ya');

if isNgantuk
    if uang >= 15000
        disp('Beli kopi: robusta');
    elseif uang < 15000
        disp('Beli kopi: jenis lain (lebih murah)');
    end
else
    disp('Tidak beli kopi (non-kopi)');
end


% Contoh while loop 
hari = input('Jumlah hari : ');

% Loop selama hari kurang dari atau sama dengan 7
while hari <= 7
    disp(['Hari ke-', num2str(hari)]);
    hari = hari + 1; 
end



