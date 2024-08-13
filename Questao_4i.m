clc
close all
clear all
s = tf([1 0],1);
v=-1;
i=1;
c=0.2;
l=2;


Is = [(2/s)+(v/c); -(v/c)-(i/s)+5/(2*s)];
Ye = [1+s*c -s*c; -s*c (1/2)+(s*c)+1/(l*s)];
e = Ye\Is

%% Ye * e = Is