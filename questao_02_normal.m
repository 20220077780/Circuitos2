clc
close all
clear all

Aa = zeros(3, 3);
Aa(1,1) = -1;
Aa(3,1) = 1;
Aa(1,2) = 1;
Aa(2,2) = -1;
Aa(2,3) = 1;
Aa(3,3) = -1;

A = Aa(1:end-1 , :);


Yb = diag([1/2 1 1/7]);
Yb(1,3) = -5/7;
Yb(2,3) = -5/7;


Vs = zeros(3,1);


Js = zeros(3,1);
Js(1,1) = -1;
Js(2,1) = -5;
Js(3,1) = 1;


Yn = A*Yb*transpose(A);
Is = -A*Js + A*Yb*Vs;

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs