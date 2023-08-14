%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 6
PROBLEM TITLE: Sum Square Difference
PROBLEM URL: https://projecteuler.net/problem=6
PROBLEM DESCRIPTION: The sum of the squares of the first ten natural 
numbers is, 1^2+2^2+...+10^2 = 385. The square of the sum of the first ten 
natural numbers is, (1+2+...+10)^2 = 55^2 = 3025. Hence the difference 
between the sum of the squares of the first ten natural numbers and the 
square of the sum is 3025?385 = 2640. Find the difference between the sum 
of the squares of the first one hundred natural numbers and the square of 
the sum.

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

tic

numbers = 1:100;
solution = sum(numbers)^2 - sum(numbers.^2);

toc
