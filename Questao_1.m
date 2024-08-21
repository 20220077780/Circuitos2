clc
close all
clear all

A = [
    1 1 0 0 0 0 ;
    0 -1 1 1 0 0;
    0 0 0 -1 1 0;
    0 0 0 0 -1 1
    ];
At = transpose(A); 

Js = [-3; 0; 0; 0; 0; 9]; 
Vs= [0; 0; 0; 0; 0; 0]; 
%Yb = diag([1, 1/2, 1/7, 1/5, 1/4, 1/5])
Yb = [
    1 0 0 0 0 0;
    0 1/2 0 0 0 0;
    0 0 1/7 0 0 0;
    0 0 1/5 0 0 0;
    0 0 0 0 1/4 0;
    0 0 0 0 0 1/5
    ]

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;