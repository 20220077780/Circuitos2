clc
close all
clear all

A = [
    1 1 1 0 ;
    0 -1 0 1
    ];
At = transpose(A); 

Js = [0; 6; 0; 0]; 
Vs= [4; 0; 0; 0]; 
Yb = [
    1/7 0 0 0;
    0 1 0 0;
    0 0 1/2 0;
    0 0 -0.2 1/3
    ];

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;