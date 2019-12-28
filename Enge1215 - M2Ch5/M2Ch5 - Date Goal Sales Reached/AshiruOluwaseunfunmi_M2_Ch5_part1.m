%Rain Garden Fundraiser
%You are collecting donations to build an educational rain garden in a community park to 
%demonstrate methods that residents can use to assist with the neighborhood’s stormwater 
%runoff issues. You estimate that you will need $1000 for signage, plants, and tools. 
%You stand in the park soliciting donations for two weeks, and record the daily donations. 
%Write a Matlab program that will ask for each day’s donations and output the date when your goal of $1000 is reached. 
clc;
clear All;
%Use a loop to allow user input for one day’s number and donations at a time
Tamount = 0;
goal = 1000;
while(Tamount < goal)   
    day = input('please enter the day ');
    dayAmt = input('please enter the amount earned today ');
    Tamount = dayAmt + Tamount;    
end
%Exit the loop when the goal is met
%Output the day and total funds on that day into the command window
disp('you made');
disp(Tamount);
disp('on day');
disp(day);
%Create a sample run using the following data: