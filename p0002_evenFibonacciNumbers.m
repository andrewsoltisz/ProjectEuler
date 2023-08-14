%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 2
PROBLEM TITLE: Even Fibonacci numbers
PROBLEM URL: https://projecteuler.net/problem=2
PROBLEM DESCRIPTION: Each new term in the Fibonacci sequence is generated 
by adding the previous two terms. By starting with 1 and 2, the first 10 
terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ... By considering the 
terms in the Fibonacci sequence whose values do not exceed four million, 
find the sum of the even-valued terms.

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/22/2020
FINISH DATE: 03/22/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

tic

fibSequence = [1, 2];
n = 3;
while fibSequence(end) < 4e6
    fibSequence(n) = findFibNum(fibSequence(n-1),fibSequence(n-2));
    n = n + 1;
end
solution = sum(fibSequence(1:end-1));

toc


%% Function Definitions

function nextNumber = findFibNum(lastNum1,lastNum2)
    nextNumber = lastNum1 + lastNum2;
end