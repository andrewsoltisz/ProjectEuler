%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 3
PROBLEM TITLE: Largest Prime Factor
PROBLEM URL: https://projecteuler.net/problem=3
PROBLEM DESCRIPTION: The prime factors of 13195 are 5, 7, 13 and 29. What 
is the largest prime factor of the number 600851475143?

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/22/2020
FINISH DATE: 02/23/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

tic

n0 = 600851475143;
n = n0;
c = 2;
while c < sqrt(n0)
    if mod(n,c) == 0
        solution = c;
        n = n / c;
    else
        c = c + 1;
    end
end

toc
