%Sample of Variable Setting for Calculation code of Error Propagation // Need Symbolic Math Toolbox
%Isaac Kwon, Physics, Pusan National University
%https://github.com/Isaac-Kwon/Error-Propagation

clc
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




Data = ...
    [    35,24.8300000000000;70,25.9200000000000;105,26.9400000000000;140,27.9600000000000;175,28.9300000000000;210,29.8400000000000;245,30.8000000000000;280,31.6900000000000;315,32.6200000000000;350,33.5200000000000;385,34.3300000000000;420,35.1800000000000;455,35.9800000000000;490,36.8200000000000;525,37.5400000000000;560,38.3600000000000;595,39.0400000000000 ];

constantData = { 4.032 [] 0.023875 [] 23.64 0.2200 9.8100 203 };

errorData = [ 0.002 1 (1/4000) 0.5 0.5 0.005 0.0005 1 ];



syms M R N m Tf Ti c g

f = (M*g*R*(2*pi*N))/(m*c*(Tf-Ti));






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

filename = input('What will you name the variable file? (.mat) \nIf empty, it will be name ''variablefile.mat''\nFileName : ','s');

if isempty(filename)
    
    filename = 'variablefile.mat';
    
else
    
    filename = [filename '.mat'];
    
end

save(filename);
fprintf('\n \t Save .mat file (name : %s) \n',filename)
    