%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 10
PROBLEM TITLE:Summation of Primes
PROBLEM URL: https://projecteuler.net/problem=10
PROBLEM DESCRIPTION: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. 
Find the sum of all the primes below two million.

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/31/2020
FINISH DATE: 03/31/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

% approach 1 - brute force/niave 
tic

limit = 2e6;
solution1 = 2+3+5;
thisNumber = 7;
while thisNumber < limit
    if mod(thisNumber,3) ~= 0 && mod(thisNumber,5) ~= 0
        if isprime(thisNumber)
            solution1 = solution1 + thisNumber;
        end
    end
    thisNumber = thisNumber + 2;
end

toc

% approach 2 - use matlab for what it was meant for
% tic
% 
% limit = 2e6;
% range = 2:limit;
% solution2 = sum(range(isprime(range)));
% 
% toc
