%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 7
PROBLEM TITLE: 10,001st Prime
PROBLEM URL: https://projecteuler.net/problem=7
PROBLEM DESCRIPTION: By listing the first six prime numbers: 2, 3, 5, 7, 
11, and 13, we can see that the 6th prime is 13. What is the 10,001st prime 
number?

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

% approach 1 - brute force / MATLAB cheating (isprime)
tic

solution = 3;
counter  = 3;
while counter <= 10001
    solution = solution + 2; 
    if isprime(solution)
        counter = counter + 1;
    end
end

toc
