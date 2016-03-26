%Variable Setting for Calculation code of Error Propagation // Need Symbolic Math Toolbox
%Isaac Kwon, Physics, Pusan National University
%https://github.com/Isaac-Kwon/Error-Propagation

clc
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




Data = ...
    [     ]; % put the variable data

constantData = {  }; % put the constant data

errorData = [ ]; % put the systemic error



syms   % put symbolic variable

f =  ; %put symbolic fomula






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

filename = input('What will you name the variable file? (.mat) \nIf empty, it will be name ''variablefile.mat''\nFileName : ','s');

if isempty(filename)
    
    filename = 'variablefile.mat';
    
else
    
    filename = [filename '.mat'];
    
end

save(filename);
fprintf('\n \t Save .mat file (name : %s) \n',filename)
    