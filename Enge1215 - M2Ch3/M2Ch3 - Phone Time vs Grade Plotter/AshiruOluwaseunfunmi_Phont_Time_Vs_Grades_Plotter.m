%Write a Matlab program to import the file containing your phone usage and associated grades, then graph and analyze them. Your program should:

%Load the phonetime.csv file. Note that the first column contains time spent on phone in class in minutes, and the second column contains grades for that day’s assignment or activity
PhoneData = readtable('phonetime.csv');
TimeSpent = PhoneData(:,1);
GradeForDay = PhoneData(:,2);


%Use polyfit to create an equation describing the relationship between grades and the time you spend staring at your phone in class
p = polyfit(TimeSpent,GradeForDay,1);
f = polyval(p,TimeSpent);


%Use plot to create a scatterplot of your grades (Y) as a function of phone time (X), using ‘o’ to indicate each datapoint. 
scatter(TimeSpent,GradeForDay,'o');


%Your plot should have labels with units and a meaningful title
xLabel('Time Spent On Phone During Class (min)');
yLabel('Grades For Day’s Assignment/Activity (%)');
title('Scatter Plot Graph To Show The Relationship Between Daily Grades & Time Spent On Phone');


%Add a red line describing the predicted relationship between grades and phone time in class to your plot, using the equation coefficients determined by polyfit
hold on;
plot(TimeSpent,f,'r-');
hold off;

%Display the equation with units and descriptive variable names in the command window using fprintf
Equ= poly2sym(p,TimeSpentInMinutes);
fprintf('GradesForTheDayInPercent = %s',Equ);


%Create a sample run showing the output and plot
%Answer the following questions
%What do the results suggest about staring at your phone in class or team meetings? 
%What might explain the results?
%What are two effects that a person staring at their phone during class or team meetings might have on the people around them?
%THEY MAY DISTRCATED THOSE ARPOUND THEM 
%Why might your classmates who are bothered by this behavior pretend that they are not bothered?