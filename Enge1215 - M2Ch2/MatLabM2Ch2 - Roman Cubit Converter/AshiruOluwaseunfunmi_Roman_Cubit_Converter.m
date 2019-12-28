%Converting romanCubits to meters and feet
clc;
clear All;

romanCubit = input('Please enter a roman cubit value. \n');

meterSI = plus(romanCubit, 0.66*romanCubit);
feet = meterSI*3.28084;

%replace with fprintf
disp('The Roman Cubit has a value of ');
disp(meterSI); 
disp('meters');
disp('or');
disp(feet);
disp('feet');