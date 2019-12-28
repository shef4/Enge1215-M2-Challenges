%Methane gas is an explosion risk at or above a 5% concentration. 
%You are to develop a mine ventilation mechanism to maintain safe 
%levels of methane in a space into which the gas often leaks. 
%Create a MATLAB program that will take a concentration of methane
%in ppm (parts per million-measuring unit), and determine the appropriate 
%air handling rate in m3/s. Your program should:

%Ask the user to input a methane concentration in ppm
ppm = input('please input the methane concentration (ppm)');
ventRate=0;
%Use a conditional structure to determine a ventilation rate, using the following table:
if(0<=ppm && ppm < 5000)
   ventRate = 5; 
end
if(5000<=ppm && ppm < 20000)
    ventRate = 10; 
end
if(20000<=ppm && ppm < 30000)
    ventRate = 20; 
end
if(30000<=ppm && ppm < 50000)
    ventRate = 40; 
end
if(50000 <= ppm)
    ventRate = 80; 
end
%Output the necessary ventilation rate to the user.
disp(ventRate);
%Issue an emergency evacuation warning if the methane levels indicate an explosion risk (>50000 ppm)
if(ppm > 50000)
    disp('Warning concentration is greater than 50000ppm')
end
%Run the program, and the report the ventilation rate for 25000 ppm and 65000 ppm (include screenshots)
