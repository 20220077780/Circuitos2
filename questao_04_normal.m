clc
close all
clear all
s = tf([1 0],1);

%   Matriz incidência ramo-nó:

Aa = zeros(3, 4);
Aa(1,1) = 1;
Aa(3,1) = -1;
Aa(1,2) = 1;
Aa(2,2) = -1;
Aa(2,3) = 1;
Aa(3,3) = -1;
Aa(2,4) = 1;
Aa(3,4) = -1;

A = Aa(1:end-1 , :);         %Pego todas a linhas de Aa menos a última!

%   Matrizes e vetores de ramo:

Yb = [     1 0 0 0;
           0 s/5  0 0;
           0 0 1/(2*s) 0;
           0 0 0 1/2];

Vs = [0; 0; 0; 0;];

Js = [-2/s; 1/5; 1/s; -5/(2*s)];

%   Matrizes e Vetores de nó:

Yn = A*Yb*transpose(A);
Is = -A*Js + A*Yb*Vs;

%   Tensões de nó (E), tensões de ramo (V) e correntes de ramo (J):

E = inv(Yn)*Is
V = transpose(A)*E
J = Js + Yb*V - Yb*Vs
figure;
impulse(E(2,1));
title('Resposta ao Impulso da Tensão do Nó 02');
