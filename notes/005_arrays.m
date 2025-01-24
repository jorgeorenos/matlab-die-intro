% Arrays in MATLAB:
% Arrays are a fundamental data structure in MATLAB, used to store collections of data.
% They can be one-dimensional (vectors) or multi-dimensional (matrices).

% Vectors vs. Arrays:
% - Vectors are one-dimensional arrays, either a row vector or a column vector.
% - Arrays can have multiple dimensions, such as 2D matrices or higher-dimensional arrays.

% Creating Arrays:
% - Row vector: Use square brackets with space or comma-separated values.
rowVector = [1, 2, 3, 4, 5];

% - Column vector: Use square brackets with semicolon-separated values.
colVector = [1; 2; 3; 4; 5];

% - 2D matrix: Use square brackets with rows separated by semicolons.
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% - One-dimensional array using the colon operator:
oneDimArray = 1:5;

% Slicing Arrays:
% - Extracting elements from arrays using indices.
% - MATLAB indices start at 1, not 0.

% Extract the second element of a row vector:
secondElement = rowVector(2);

% Extract the first column of a matrix:
firstColumn = matrix(:, 1);

% Extract a submatrix:
subMatrix = matrix(1:2, 2:3);

% Common and Useful Functions for Creating Arrays:
% - zeros: Create an array of all zeros.
zeroArray = zeros(3, 3);

% - ones: Create an array of all ones.
oneArray = ones(2, 4);

% - linspace: Create a linearly spaced vector.
linearVector = linspace(0, 10, 5);

% - rand: Create an array of random numbers.
randomArray = rand(3, 3);

% Exercises:
% 1. Create a row vector with elements from 10 to 50 with a step of 10.
exercise1 = 10:10:50;

% 2. Create a 4x4 matrix of all ones.
exercise2 = ones(4, 4);

% 3. Extract the third row of the following matrix: [1, 2, 3; 4, 5, 6; 7, 8, 9].
matrixExample = [1, 2, 3; 4, 5, 6; 7, 8, 9];
exercise3 = matrixExample(3, :);

% 4. Create a column vector with 5 linearly spaced elements between 0 and 1.
exercise4 = linspace(0, 1, 5)';

% 5. Create a 3x3 matrix of random numbers and extract the submatrix formed by the first two rows and the last two columns.
randomMatrix = rand(3, 3);
exercise5 = randomMatrix(1:2, 2:3);
%--------------------------------------------------------------------------