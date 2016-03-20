%Calculation code of Error Propagation // Need Symbolic Math Toolbox
%Isaac Kwon, Physics, Pusan National University
%https://github.com/Isaac-Kwon/Error-Propagation

exist filename 
i = ans

TF=0;

clc
if (i==1&&ischar(filename))
   
    fprintf('Datafile Founded (filename : ''%s'')\n',filename)
    answer = input('Will you open?\nIf you will, press ENTER, if not press any OTHER key ans press ENTER', 's')
    
    
    if isempty(answer)
        TF = 1;
    end
    
    
    
end

if ~TF
    
    clc
    clear



    filename = input('What is the filename? (if empty, will find ''variablefile.mat'')','s');

    if isempty(filename)

        filename = 'variablefile.mat';

    else

        filename = [filename '.mat'];
    
    end

    clearvars -except filename

end

load(filename);


clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

symgroup = symvar(f);

orif = symfun(f,symgroup);
%%%%

Realdata = Data;

i=1;
j=1;

for Datanum = constantData
    if ~isempty(cell2mat(Datanum))
       Realdata(:,i) = cell2mat(Datanum);
        
    else
        Realdata(:,i) = Data(:,j);
        j=j+1;
    end
    
        
    i = i+1;
end

ArrayData = [];

T = table;

for i = 1:size(Realdata,2)
    
    %ArrayData{i} = Realdata(:,i)
    T.(char(symgroup(i))) = Realdata(:,i);
    
end


fprintf('\n\tOriginal Function\n')

orif
fprintf('\n\tVariables\n')
symgroup

fprintf('\n\tOriginal Data\n\n\n')
disp(T)


symfuncs = cell(0);

i=1;

for symbolic = symvar(f)
   
    symfuncs{i} = diff(f,symbolic);
    
    i=i+1;
end

Efuncs = symfun(cell2sym(symfuncs).^2,symgroup);

Datacell = num2cell(Realdata);

Datasum = [];


    for i = 1: size(Datacell,1)
    Datasum(i) = sqrt(sum((Efuncs(Datacell{i,:}).*(errorData.^2))));
    Orical(i) = double(orif(Datacell{i,:}));
    
    end
    
    
Datasum;
double(Orical);



T2 = table(Orical',Datasum','VariableNames',{'Calculation','Error'});
fprintf('\n\n\t Calculated Data\n\n')
disp(T2)

OriginalData = T;
CalculationData = T2;

clearvars -except OriginalData CalculationData filename