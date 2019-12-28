clc;
clear All;
%Use disp to explain the purpose of your program to the user
disp('This progam demonstrates to the students some of the differences in which disp and fprintf can output numbers');
%Show the results of this simple division problem: 22÷7 using the default MATLAB numbering format
DivCalc = 22/7;
disp('The value below is being displayed using the disp function')
disp(DivCalc);
%Use fprintf output the result of the calculation with a fixed-point notation (see help file)
fprintf('%4.2f is being display with fprintf \n',DivCalc);
%Use fprintf to display the results of the calculation using three different number formatting styles of your choice 
fprintf('%4.2e is dislaying an exponetian format using fprintf  \n %4i is dislaying an signed integer format using fprintf \n%2.2E is dislaying a uppercase expontetial format format using fprintf',DivCalc,DivCalc,DivCalc);