%for loop of credit hour + number of grade points earned for 1-4 courses
% A in a 4 credit course, B in a 3 credit course, C in a 2 credit course, and B in another 4 credit course. 
clc;
clear All;
CourseCH = zeros(1,4);
CourseGP = zeros(1,4);
ProductCHGP = zeros(1,4);
for i = 1:4
    GradeLetter = input('Please enter your Grade point earned(A-D)(Uppercase)','s'); 
    CourseCH(i) = input('Please enter your Credit hours (4-0)'); 
    if GradeLetter == 'A'
        CourseGP(i) = 1;
    end
    if GradeLetter == 'B'
        CourseGP(i) = 2;
    end
    if GradeLetter == 'C'
        CourseGP(i) = 3;
    end
    if GradeLetter == 'D'
        CourseGP(i) = 4;
    end
    ProductCHGP(i)= CourseGP(i)*CourseCH(i);
end

%GPA
SumCHGP=0;
SumCH=0;
for j = 1:4
    SumCHGP = ProductCHGP(j) + SumCHGP;
    SumCH = CourseCH(j) + SumCH;
end
GPA = SumCHGP/SumCH;

%output replace with fprintf
disp('Your GPA is :');
disp(GPA);
