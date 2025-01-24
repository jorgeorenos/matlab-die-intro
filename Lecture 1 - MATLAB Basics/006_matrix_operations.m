% Matrix Operations in MATLAB

% 1. Creating Matrices
A = [1 2 3; 4 5 6; 7 8 9]; % 3x3 matrix
B = [9 8 7; 6 5 4; 3 2 1]; % 3x3 matrix

% 2. Matrix Addition
C = A + B; % Adds corresponding elements of A and B

% 3. Matrix Subtraction
D = A - B; % Subtracts corresponding elements of B from A

% 4. Matrix Multiplication
E = A * B; % Multiplies matrices A and B (dot product)

% 5. Element-wise Multiplication
F = A .* B; % Multiplies corresponding elements of A and B

% Explanation of Element-wise Operations
% In MATLAB, the dot (.) notation is used to perform element-wise operations on matrices or arrays.
% This means that the operation is applied to each corresponding element of the matrices.
% For example, A .* B multiplies each element of A with the corresponding element of B.
% Similarly, A ./ B divides each element of A by the corresponding element of B.
% This is different from matrix multiplication or division, which follow linear algebra rules.

% 6. Matrix Transposition
G = A'; % Transposes matrix A

% 7. Matrix Inversion
H = inv(A); % Inverts matrix A (if A is invertible)

% 8. Determinant of a Matrix
det_A = det(A); % Computes the determinant of matrix A

% 9. Eigenvalues and Eigenvectors
[eigenvectors, eigenvalues] = eig(A); % Computes eigenvalues and eigenvectors of A

% 10. Solving Linear Equations
% Solving Ax = b for x
b = [1; 2; 3];
x = A \ b; % Solves the system of linear equations

% Incremental Exercises

% 1. Create a 4x4 matrix of random integers between 1 and 10.
% 2. Compute the sum of all elements in a 5x5 matrix.
% 3. Create a 3x3 identity matrix.
% 4. Find the inverse of a 4x4 matrix.
% 5. Compute the product of two 3x3 matrices.
% 6. Find the eigenvalues of a 4x4 matrix.
% 7. Solve a system of linear equations with a 3x3 coefficient matrix.
% 8. Compute the determinant of a 5x5 matrix.
% 9. Perform element-wise division of two 4x4 matrices.
% 10. Create a 6x6 matrix and compute its rank.