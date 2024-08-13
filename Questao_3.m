clc
close all
clear all
s = tf([1 0],1);
c=0.5;
l=0.5;
v=-1;
i=1;

A = [1 1 1 1];
At = transpose(A); 

Js = 0; 
Vs= [(-v/s)+(2/s)+1; -(l*i+4/s); -4/s; 0]; 
Yb = [
    s*c 0 0 0;
    0 1 0 0;
    0 0 1/(s*l) 0;
    0 0 0 1/3
    ]

Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;

figure;
impulse(E(2,1));
title('Resposta ao Impulso da Tensão do Nó 02');