clc;
clear All;
%Ask the user for the desired batch size, in kilograms
BatchSize = input('What is your desired batch size in kilograms');
%Use the colon operator (:) to generate a time vector with times between 1 and 30 minutes in one-minute increments
Time = 1:1:30;
%Fill a substance 1 rate vector using the time vector and the equation
Sub1Rate = Time / 30;
%Fill a substance 2 rate vector using the time vector, the desired batch size, and the equation
Sub2Rate = Time * (BatchSize + 5) / 200;
%Combine the vectors into a single three-column array (or matrix), with time in the first column, substance 1 rate in the second column, and substance 2 rate in the third column (Alternative: do steps ii-iv in the array)
ComVec= [Time(:),Sub1Rate(:),Sub2Rate(:)];
%Create a .csv file with the contents of your array, named “CRN_lastnamefirstname_SubstanceRates.csv” (e.g. “91071_grayDavid_SubstanceRates.csv”)
csvwrite('83949_AshiruOluwaseunfunmi_SubstanceRates.csv',ComVec);
%Notify the user that a .csv file has been created, and indicate the file name
disp('A .csv file has being created containing the substance rates. this file is called 83949_AshiruOluwaseunfunmi_SubstanceRates.csv');
