clc
close all
clear all

A = [
    1 1 0 0 ;
    0 -1 1 0;
    0 0 -1 -1
    ];
At = transpose(A); 

Js = [-4; 0; 0; -1]; 
Vs= 0; 
Yb = [
    1/2 0 0 5/2;
    0 1 0 -5/2;
    0 0 1/5 0;
    0 0 0 -1/2
    ];

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;