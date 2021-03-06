%Sample of Variable Setting for Calculation code of Error Propagation // Need Symbolic Math Toolbox
%Isaac Kwon, Physics, Pusan National University
%https://github.com/Isaac-Kwon/Error-Propagation

clc
%clearvars -except Data

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




Data = ...
    [129,28,23.9600000000000;310,33,23.9600000000000;478,38,23.9600000000000];

constantData = { 4.032 [] 0.023875 [] [] 0.2200 9.8100 203 };

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
    