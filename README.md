# Error-Propagation
Error Propagation Calulation by MATLAB <br>
Need Symbolic Math Toolbox

## How to use

1. Set the Variables and Data, Fomula (by 'VariableSetting.m')
2. Run the 'errorpropagation_calculation.m'

### How to set variable

1. Open 'VariableSetting.m'
2. Put in the Data(VariableName : Data) <br>
  - you shoun't put the constant data (always same at experiment - like Gravity acceleration)

  For Example <br>
  if the data is below table,<br>
  Variable name : a b

  | a | b |
  | --- | --- |
  | 2 | 3 |
  | 4 | 5 |

  Put the data like below convention<br>

  Data = [ 2,3 ; 4,5]

3. Put the Constant Data
 - you can put the constant : always same at the experiment
 - put like below convention
  constantData = { 9.81 2.71 [] [] 6.99*10^-3 }
 - Datatype will 'Cell'
 - the NULL Cell is non-constant data, will filled by non-constant data was put (2)
 - If you put all constant @process 2, don't have to fill this. (make a null cell-array)

4. Put the Error Data
 - please look the sample.
 
5. Write the fomula. (symbolic fomula)

6. Put all symbolic variable used at (process 5)'s fomula. 

7. Run the Code 'VariableSetting.m'

8. input the proper filename to save MATLAB Workspace's Variables
 - You don't have to choose the filename
 - If input null, will save 'variablefile.mat'
 - you must'nt type with the filename extension(.mat), the code will attach that.

### How to run the main code

1. Run the code 'errorpropagation_calculation.m'

2. Input the filename (.mat) you saved before.
 - do not type with filename extension(.mat)
 - If input null, will load 'variablefile.mat'
 - If the variable 'filename' exist on the workspace the console will request input to open the .mat file.
 
3. Code will calculate.
 - Check the Table variable's order right.
 - If not, change the order of column of data. ('VariableSetting.m' 's Data, constantData, errorData)

## Reference
 - Physics Textbook Commitee on Pusan National University, General Physics Experiment, Chungmungak (부산대학교물리학교재편찬위원회, 일반물리학실험, 청문각)
