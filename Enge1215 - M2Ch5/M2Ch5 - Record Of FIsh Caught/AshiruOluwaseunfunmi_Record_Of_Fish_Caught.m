
%Create a Matlab program that will take a vector of fish weights,
%and create a detailed summary of the haul, complete with total fish count, 
%total mass, and total income for each category of fish.
clc;
clear All;
%Take user input for the weights (kg) of all fish from the haul as a vector
coloum = 1;
WholeFish=0;
Fillet=0;
Canning=0;
PetFood = 0;
FishExtracts=0;

WFWeight=0;
FWeight=0;
CWeight=0;
PFWeight=0;
FEWeight=0;

WFIncome=0;
FIncome=0;
CIncome=0;
PFIncome=0;
FEIncome=0;
% input and create vector, 
Fweight = input('please enter the weight of the fish vector \n');
%Use a loop to determine the number of each grade fish in the haul, and the total income for each grade of fish
FishNum = length(Fweight);
while FishNum > 0
    if Fweight(1,coloum)>30
        WholeFish = WholeFish + 1;
        WFWeight = WFWeight + Fweight(1,coloum);
        WFIncome = WFIncome + 20;
    elseif 20 < Fweight(1,coloum) && Fweight(1,coloum) <= 30
        Fillet = Fillet + 1;  
        FWeight = FWeight + Fweight(1,coloum);
        FIncome = FIncome + 20;
    elseif 10 < Fweight(1,coloum) && Fweight(1,coloum) <= 20
        Canning = Canning + 1;  
        CWeight = CWeight + Fweight(1,coloum);
        CIncome = CIncome + 20;
    elseif 5 < Fweight(1,coloum) && Fweight(1,coloum) <= 10
        PetFood = PetFood + 1;  
        PFWeight = PFWeight + Fweight(1,coloum);
        PFIncome = PFIncome + 20;
    elseif 0 < Fweight(1,coloum) && Fweight(1,coloum) <= 5
        FishExtracts = FishExtracts + 1;  
        FEWeight = FEWeight + Fweight(1,coloum);
        FEIncome = FEIncome + 20;
    end
    FishNum = FishNum - 1;
    coloum = coloum + 1;
end

%Determine the total income resulting from selling the haul
TotalIncome = WFIncome+FIncome+CIncome+PFIncome+FEIncome;
%Output a detailed invoice including the weight of each grade of fish, the total income for each grade of fish,
%and the total income from the entire haul
fprintf("You caught %-3d kg of S grade fish. This can be sold for %-4.2f $ \n",WFWeight,WFIncome);
fprintf("You caught %-3d kg of A grade fish. This can be sold for %-4.2f $ \n",FWeight,FIncome);
fprintf("You caught %-3d kg of B grade fish. This can be sold for %-4.2f $ \n",CWeight,CIncome);
fprintf("You caught %-3d kg of C grade fish. This can be sold for %-4.2f $ \n",PFWeight,PFIncome);
fprintf("You caught %-3d kg of D grade fish. This can be sold for %-4.2f $ \n",FEWeight,FEIncome);
fprintf("Your total sales income would be %-4.2f $ \n",TotalIncome);
