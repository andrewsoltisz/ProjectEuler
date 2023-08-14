%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 4
PROBLEM TITLE: Largest palindrome product
PROBLEM URL: https://projecteuler.net/problem=4
PROBLEM DESCRIPTION: A palindromic number reads the same both ways. The 
largest palindrome made from the product of two 2-digit numbers is 
9009 = 91 × 99. Find the largest palindrome made from the product of two 
3-digit numbers.

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

combos   = combnk(100:999,2); 
numbers  = sort(combos(:,1) .* combos(:,2));
counter  = numel(numbers);
solution = numbers(counter);
while ~isPalindrome(solution)
    counter  = counter - 1;
    solution = numbers(counter);
end

toc

%% Function Definitions
function result = isPalindrome(number)
    result = mirror(number) == number;
end

function mirroredNumber = mirror(originalNumber)
    mirroredNumber = str2double(flip(num2str(originalNumber)));
end

