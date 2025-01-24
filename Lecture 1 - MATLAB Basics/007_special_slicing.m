% Special cases of slicing matrices, arrays, and vectors in MATLAB

% Create a sample matrix
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% 1. Slicing using boolean indexing
% Create a logical matrix of the same size as A
logicalIndex = A > 4;
% Use the logical matrix to index into A
result1 = A(logicalIndex);
% This will return all elements of A that are greater than 4

% 2. Slicing using another array
% Create an array of indices
indexArray = [1, 3];
% Use the array to index into the rows and columns of A
result2 = A(indexArray, :);
% This will return the 1st and 3rd rows of A

% 3. Slicing using a vector
% Create a vector
v = [10, 20, 30, 40, 50];
% Use a vector of indices to slice the vector
indexVector = [2, 4];
result3 = v(indexVector);
% This will return the 2nd and 4th elements of v

% 4. Slicing using end keyword
% Use the end keyword to refer to the last element
result4 = A(1:end, 2);
% This will return all elements in the 2nd column of A

% 5. Slicing with step size
% Use a step size to slice the array
result5 = v(1:2:end);
% This will return every other element of v, starting from the 1st element