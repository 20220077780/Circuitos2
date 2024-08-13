clc
close all
clear all


Is = [300; 2.5-5/6]*0.001;
Ye = [
        (1/7+1/5) -1/5;
        -1/5 (1+1/3+1/5)
    ]*0.001;
e = Ye\Is

%% Ye * e = Is