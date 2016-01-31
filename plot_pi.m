clc
clear

% Calculate the pi number, plot

TestNum=1e7;  % Produce 1e7 points

% use rand() function to produce two array random number
X=2*(rand(TestNum,2)-0.5); 
CircleNum=0;
%
% figure
% hold on
for i=1:TestNum
    if X(i,1)^2+X(i,2)^2<=1
        CircleNum=CircleNum+1;
%        plot(X(i,1),X(i,2),'r.')
    else
%        plot(X(i,1),X(i,2),'bo')
    end
    
end
%Calculate the pi number
SPi = 4*CircleNum/TestNum
