clc
close all
clear all
s = tf([1 0],1);
c=0.5;
l=0.5;
v=-1;
i=1;

Is = [-v/s + 2/(s+1) -l*i -4/s -4/s];
Ye = [1+s*c+1/3+1/(s*l)];
e = Ye\Is

%% Ye * e = Is