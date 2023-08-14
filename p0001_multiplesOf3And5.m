%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 1
PROBLEM TITLE: Multiples of 3 and 5
PROBLEM URL: https://projecteuler.net/problem=1
PROBLEM DESCRIPTION: If we list all the natural numbers below 10 that are 
multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
23. Find the sum of all the multiples of 3 or 5 below 1000.

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/21/2020
FINISH DATE: 03/21/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

% approach 1
tic

multiplesOf3 = 3:3:999;
multiplesOf5 = 5:5:999;
allMultiples = unique([multiplesOf3,multiplesOf5]);
solution1    = sum(allMultiples);

toc

% approach 2
tic

solution2 = 0;
for i = 1:999
    if mod(i,3)==0 || mod(i,5)==0
        solution2 = solution2 + i;
    end
end

toc
