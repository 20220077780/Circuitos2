clc
close all
clear all

Is = [4; 0; -1];
Ye = [
    (1/2)+1 -1 0;
    -1 1+(1/5) -(1/5)-(5/2);
    0 -(1/5) (1/5)+(1/2)
        ];
e = Ye\Is

%% Ye * e = Is