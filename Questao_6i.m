clc
close all
clear all
s = tf([1 0],1);
cum = 0.45;
cdois = 0.25;
vum = -1; 
vdois = -1;

Is = [1/s; 0];
Ye = [(1/2)+(s*cum)+(1/4) -1/4;
      -0.15 (1/4)+(s*cdois)];
e = Ye\Is
impulse(e)
%% Ye * e = Is
