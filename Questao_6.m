clc
close all
clear all
s = tf([1 0],1);
cum = 0.45;
cdois = 0.25;
vum = -1; 
vdois = -1;

A = [1 1 1 0;
     0 -1 0 -1];
At = transpose(A); 

Js = [0; 0; 0; 0];
Vs= [-1/s; 0; -vum/s;  -vdois*cdois]; 
Yb = [
    1/2 0   0       0;
    0   1/4 0       0;
    0   0   (s*cum) 0;
    0.1 0   0       s*cdois
    ];

Yn = A*Yb*At;
Is = -A*Js + A*Yb*Vs;

E = inv(Yn)*Is;
V = transpose(A)*E;
J = Js+Yb*V-Yb*Vs;

impulse(E)