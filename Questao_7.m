clc
close all
clear all

A = [
    1 1 0 0 0;
    0 -1 1 1 1
    ];
At = transpose(A); 

Js = [-0.3; 0; 0; 0; 0]; 
Vs= [0; 0; 2.5; 0; -5]; 
Yb = diag([1/7, 1/5, 1, 1/6, 1/6])*0.001;

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;