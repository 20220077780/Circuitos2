clc
close all
clear all
s = tf([1 0],1);

A = [
    1  1  0  0  0  0  0;
    -1 0  1  1  0  0  0;
    0  0 -1  0  1  1  0;
    0  0  0 -1 -1  0  1
    ]; %% A= 4x7
At = transpose(A); %% At = 7x4

Js = [3; 0; 3; -2; 0; 0; -2]; %% Js=7x1
Vs= [0; 0; 0; 0; 0; 0; 0]; 

Yb = [
     1 0 0 0 0 0 0;
     0 (1/2) 0 0 0 0 0;
     0 0 (1/3) 0 0 0 0;
     0 0 0 (1/4) 0 0 0;
     0 0 0 0 (1/7) 0 0;
     0 0 0 0 0 (1/5) 0;
     0 0 0 0 0 0 (1/6)
    ]; %% Yb=7x7
%%V = [v1; v2; v3; v4; v5; v6; v7];
%%Tu podes usar tambem Yb = diag([1, 1/2, 1/3, 1/4, 1/7, 1/5, 1/6]);%%

%%J = Js + Yb*V - Yb*Vs; Acho que nao precisa disso, apenas no papel
Yn = A*Yb*transpose(A)
Is = -A*Js + A*Yb*Vs

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs;

%% 
