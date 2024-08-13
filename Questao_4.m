clc
close all
clear all
s = tf([1 0],1);
v=-1;
i=1;
c=0.2;
l=2;

A = [
    1 1 0 0 ;
    0 -1 1 1 
    ];
At = transpose(A); 

Js = [-2/s; 0; 0; 0]; 
Vs= [0; v/s; l*i; 5/s]; 
Yb = [
    1 0 0 0;
    0 s*c 0 0;
    0 0 1/(l*s) 0;
    0 0 0 1/2
    ];

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;