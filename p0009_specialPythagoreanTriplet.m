%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 9 
PROBLEM TITLE: Special Pythagorean Triplet
PROBLEM URL: https://projecteuler.net/problem=9
PROBLEM DESCRIPTION: A Pythagorean triplet is a set of three natural 
numbers, a < b < c, for which, a^2 + b^2 = c^2 For example, 
3^2 + 4^2 = 9 + 16 = 25 = 5^2. There exists exactly one Pythagorean triplet 
for which a + b + c = 1000. Find the product abc.

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/30/2020
FINISH DATE: 03/31/2020
SOLUTION DESCRIPTION: Iteritively increment 'a' from 1:1000-3. For a given 
value of 'a', iteritively increment 'b' from a+1:(1000-a)/2-1. Calculate 
'c' as sqrt(a^2+b^2) and check if the triplet sums to 1000.
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

tic

solution = nan;
sum = 1000;
for a = 1:sum-3
    for b = (a+1):(ceil((sum-a)/2)-1)
        c = sqrt(a^2 + b^2);
        if (a + b + c) == sum
            solution = a * b * c;
            toc
            return
        end
    end
end
