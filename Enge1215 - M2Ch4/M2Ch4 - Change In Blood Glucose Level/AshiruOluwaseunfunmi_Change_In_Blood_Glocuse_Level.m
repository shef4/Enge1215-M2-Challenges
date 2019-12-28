%You are a biomedical engineer who is working on a method of monitoring blood glucose (sugar) for athletes, to help them maintain levels during an endurance event.  Develop a MATLAB to determine whether there is significant change, and if so, in what direction. You should also set an alert for the user if blood glucose moves into an unsafe range. Your program should:

%Take a user input for an initial blood glucose level in mg/dL
IBGL = input('Please input initital blood Glucose level (mg/dL)');
%Take a user input for a new blood glucose level in mg/dL
NBGL = input('Please input new blood Glucose level (mg/dL)');
BGLChange = NBGL-IBGL;
%Use a conditional structure to compare the blood glucose levels, then output whether there is no significant change, a significant increase, or a significant decrease. A change of >= 10 mg/dL is considered significant for your purposes.
if(BGLChange >= -10 && BGLChange <= 10)
    disp(' no significant change');
end
if(BGLChange >= 10)
    disp('there is a significant increase');
end
if(BGLChange <= -10)
    disp('there is a significant decrease');
end
%Hint: “abs(x)” determines the absolute value of any number x
%Check whether the new blood glucose is within the safe range for exercise (70 < level <= 250 mg/dL), and output an indication of whether it is unsafe in the high or low range
if(NBGL >70 && NBGL <=250)
    disp('Your blood glucose level is a safe range to exercise');
else
    disp('Your blood glucose level is not a safe range to exercise');
end
%Create four sample runs, each comparing an initial blood glucose level of 150 mg/dL with these new levels: 65, 120, 155, and 260 mg/dL