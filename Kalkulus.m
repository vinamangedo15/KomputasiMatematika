clc
clear

% kalkulus sederhana
% limit
% contoh 1
% syms x
% limit((x^3+5)/(x^4+7))
%
% %contoh 2
% limit ((x- 3)/ (x-1),1)
%
% % contoh 3
% syms x
% f = (3*x+5)/(x-3);
% g = x^2+1;
% ll= limit(f,4)
% l2= limit(g,4)
% ltambah = limit (f+g,4)
% lkurang = limit (f-g,4)
% lkali = limit (f*g,4)
% lbagi = limit (f/g,4)

% Turunan
% syms t
% f= 3*t^2 + 2*t^(-2);
% diff(f,t)

% sifat turunan
syms x
syms t
 f = (x + 2)*(x^2 +3)
 der1 = diff(f)
 