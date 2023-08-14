%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 5
PROBLEM TITLE: Smallest Multiple
PROBLEM URL: https://projecteuler.net/problem=5
PROBLEM DESCRIPTION: 2520 is the smallest number that can be divided by 
each of the numbers from 1 to 10 without any remainder. What is the 
smallest positive number that is evenly divisible by all of the numbers 
from 1 to 20?

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/23/2020
FINISH DATE: 03/23/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

% approach 1 - Brute Fuckin Force (WAAAY TO SLOW, like run-overnight-slow)
tic

divisors = 1:20;
solution = divisors(end);
while ~isEvenlyDivisible(solution,divisors)
    solution = solution + 1;
end

toc

% approach 2
tic

divisors = 1:20;
factor   = prod(divisors(isprime(divisors)));
solution = factor;
while ~isEvenlyDivisible(solution,divisors)
    solution = solution + factor;
end

toc

%% Function Definitions
function result = isEvenlyDivisible(number,divisors)
    result = all(mod(number,divisors) == 0);
end