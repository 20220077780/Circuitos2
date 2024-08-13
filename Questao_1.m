clc
close all
clear all

A = [
    1 1 0 0 0 0 ;
    0 -1 1 1 0 0;
    0 0 0 -1 1 0;
    0 0 0 0 -1 1;
    ];
At = transpose(A); 

Js = [-3; 0; 0; 0; 0; 9]; 
Vs= 0; 
Yb = diag([1, 1/2, 1/7, 1/7, 1/4, 1/5])
Yb(4,5) = 5;

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;