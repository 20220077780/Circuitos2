clc
close all
clear all

Is = [-38/7; 6];
Ye = [(1/7)+1+(1/2) -1; -1.2 1+(1/3)];
e = Ye\Is

%% Ye * e = Is