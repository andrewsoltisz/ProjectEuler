%% Problem Description
%{ 
___________________________________________________________________________
Project Euler

PROBLEM NUMBER: 11
PROBLEM TITLE: Largest Product in a Grid
PROBLEM URL: https://projecteuler.net/problem=11 
PROBLEM DESCRIPTION: In the 20×20 grid below, four numbers along a diagonal 
line have been marked with stars.

08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 *26* 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 *63* 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 *78* 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 *14* 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

The product of these numbers is 26 × 63 × 78 × 14 = 1788696. What is the 
greatest product of four adjacent numbers in the same direction (up, down, 
left, right, or diagonally) in the 20×20 grid?

Andrew Soltisz, andysoltisz@gmail.com, 330-569-4138
START DATE: 03/31/2020
FINISH DATE: 04/01/2020
SOLUTION DESCRIPTION:
___________________________________________________________________________
%}

clear variables
close all
clc

%% Solution Script

tic

range = 4;
grid  = [08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08;...
         49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00;...
         81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65;...
         52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91;...
         22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80;...
         24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50;...
         32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70;...
         67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21;...
         24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72;...
         21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95;...
         78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92;...
         16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57;...
         86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58;...
         19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40;...
         04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66;...
         88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69;...
         04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36;...
         20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16;...
         20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54;...
         01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48];
%     
%% approach 1 - works for 2D grids of any size and shape
% 
% % get row products
% rowCount = size(grid,1);
% rowProds = zeros(rowCount,1);
% for row = 1:rowCount
%     rowProds(row) = maxSeriesProd(grid(row,:),range);
% end
% 
% % get column products
% colCount = size(grid,2);
% colProds = zeros(colCount,1);
% for col = 1:colCount
%     colProds(col) = maxSeriesProd(grid(:,col),range);
% end
% 
% % get left-->right diagonal products
% diagCount = 2 * (sum(size(grid)) - 1);
% diagProds = zeros(diagCount,1);
% thisProd = 1;
% for rowSeed = rowCount:-1:1
%     col = 1;
%     diagSeg(col) = grid(rowSeed,col);
%     row = rowSeed + 1;
%     col = col + 1;
%     while (row <= rowCount) && (col <= colCount)
%         diagSeg(col) = grid(row,col);
%         row = row + 1;
%         col = col + 1;
%     end
%     diagProds(thisProd) = maxSeriesProd(diagSeg,range);
%     thisProd = thisProd + 1;
%     diagSeg = [];
% end
% for colSeed = colCount:-1:2
%     row = 1;
%     diagSeg(row) = grid(row,colSeed);
%     row = row + 1;
%     col = colSeed + 1;
%     while (row <= rowCount) && (col <= colCount)
%         diagSeg(row) = grid(row,col);
%         row = row + 1;
%         col = col + 1;
%     end
%     diagProds(thisProd) = maxSeriesProd(diagSeg,range);
%     thisProd = thisProd + 1;
%     diagSeg = [];
% end
% 
% % get right-->left diagonal products
% for rowSeed = rowCount:-1:1
%     diagSize = 1;
%     col = colCount;
%     diagSeg(diagSize) = grid(rowSeed,col);
%     row = rowSeed + 1;
%     col = col - 1;
%     while (row <= rowCount) && (col >= 1)
%         diagSize = diagSize + 1;
%         diagSeg(diagSize) = grid(row,col);
%         row = row + 1;
%         col = col - 1;
%     end
%     diagProds(thisProd) = maxSeriesProd(diagSeg,range);
%     thisProd = thisProd + 1;
%     diagSeg = [];
% end
% for colSeed = 1:colCount-1
%     row = 1;
%     diagSeg(row) = grid(row,colSeed);
%     row = row + 1;
%     col = colSeed - 1;
%     while (row <= rowCount) && (col >= 1)
%         diagSeg(row) = grid(row,col);
%         row = row + 1;
%         col = col - 1;
%     end
%     diagProds(thisProd) = maxSeriesProd(diagSeg,range);
%     thisProd = thisProd + 1;
%     diagSeg = [];
% end   
% 
% % get max product
% solution = max([rowProds;colProds;diagProds]);
% 
% toc

% grid = [1 5 9 13; 2 6 10 14; 3 7 11 15; 4 8 12 16];
% 
%% approach 2 - There's got to be some way to use linear indexing to quicly
% % pick out the diagonals (given linIdx and grid size->get all diags)
% tic
% % get row products
% rowCount = size(grid,1);
% rowProds = zeros(rowCount,1);
% for row = 1:rowCount
%     rowProds(row) = maxSeriesProd(grid(row,:),range);
% end
% 
% % get column products
% colCount = size(grid,2);
% colProds = zeros(colCount,1);
% for col = 1:colCount
%     colProds(col) = maxSeriesProd(grid(:,col),range);
% end

% % get diagonal products
% diagCount = 2 * (sum(size(grid)) - 1);
% diagProds = zeros(diagCount,1);
% % get L->R diagonal prods
% c = 1;
% diag = [grid((rowCount-0)+(5*0))];                                                                               diagProd(c) = maxSeriesProd(diag,range); c = c + 1;
% diag = [grid((rowCount-1)+(5*0)), grid((rowCount-1)+(5*1))];                                                     diagProd(c) = maxSeriesProd(diag,range); c = c + 1;
% diag = [grid((rowCount-2)+(5*0)), grid((rowCount-2)+(5*1)), grid((rowCount-2)+(5*2))];                           diagProd(c) = maxSeriesProd(diag,range); c = c + 1;
% diag = [grid((rowCount-3)+(5*0)), grid((rowCount-3)+(5*1)), grid((rowCount-3)+(5*2)), grid((rowCount-3)+(5*3))]; diagProd(c) = maxSeriesProd(diag,range); c = c + 1;
% diag = [grid((rowCount+1)+(5*0)), grid((rowCount+1)+(5*1)), grid((rowCount+1)+(5*2))];
% diag = [grid((rowCount+5)+(5*0)), grid((rowCount+5)+(5*1))];
% diag = [grid((rowCount+9)+(5*0))];

%% approach 3 - only works with 2D square grids

% grid = [1 5 9 13; 2 6 10 14; 3 7 11 15; 4 8 12 16];

% get row products
rowCount = size(grid,1);
rowProds = zeros(rowCount,1);
for row = 1:rowCount
    rowProds(row) = maxSeriesProd(grid(row,:),range);
end

% get column products
colCount = size(grid,2);
colProds = zeros(colCount,1);
for col = 1:colCount
    colProds(col) = maxSeriesProd(grid(:,col),range);
end

% get diagonal products
diagCount = 2 * (sum(size(grid)) - 1);
diagProds = zeros(diagCount,1);
prodCount = 1;
% get LR diagonal products
for colSeed = 1:colCount
    for rowSeed = (rowCount-colSeed+1):-1:1
        newGrid = grid(rowSeed:(rowCount-colSeed+1),colSeed:(colCount-rowSeed+1));
        diag = getDiag(newGrid,'LR');
        diagProds(prodCount) = maxSeriesProd(diag,range);
        prodCount = prodCount + 1;
    end
end
% get RL diagonal products - FIX ME
for colSeed = colCount:-1:1
    for rowSeed = (rowCount-colSeed+1):-1:1
        newGrid = grid(rowSeed:(rowCount-colSeed+1),colSeed:(colCount-rowSeed+1));
        diag = getDiag(newGrid,'LR');
        diagProds(prodCount) = maxSeriesProd(diag,range);
        prodCount = prodCount + 1;
    end
end

% get max product
solution = max([rowProds;colProds;diagProds]);

toc

%% Function Definitions

function maxProd = maxSeriesProd(numbers,range)
    if length(numbers) > range
        position = range + 1;
        maxProd = 0;
        while position <= length(numbers)
            segment = numbers(position-range:position-1);
            while any(segment==0) && (position <= length(numbers)-range)
                position = position + find(segment==0,1,'last');
                segment  = numbers(position-range:position-1);
            end
            product = prod(segment);
            if product > maxProd
                maxProd = product;
            end
            position = position + 1;
        end
    else
        maxProd = prod(numbers);
    end
end

function diag = getDiag(mat,dir)
    switch dir
        case 'LR'
            diag = zeros(1,size(mat,1));
            for i = 1:size(mat,1)
                diag(i) = mat(i+((i-1)*size(mat,1)));
            end
        case 'RL'
            %do something
        otherwise
            error('Invalid direction entry.')
    end
end