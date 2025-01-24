% Boolean values in MATLAB
% In MATLAB, boolean values are represented as logical data types.
% The two boolean values are true (1) and false (0).

% Creating boolean variables
a = true;  % equivalent to 1
b = false; % equivalent to 0

% Boolean operations
% MATLAB supports standard boolean operations such as AND, OR, and NOT.

% AND operation (&& for short-circuit, & for element-wise)
c = a && b; % short-circuit AND, evaluates to false (0)
d = a & b;  % element-wise AND, evaluates to false (0)

% OR operation (|| for short-circuit, | for element-wise)
e = a || b; % short-circuit OR, evaluates to true (1)
f = a | b;  % element-wise OR, evaluates to true (1)

% NOT operation (~)
g = ~a; % NOT operation, evaluates to false (0)

% Boolean arrays
% Boolean values can be stored in arrays and matrices.

% Creating a boolean array
boolArray = [true, false, true; false, true, false];

% Performing operations on boolean arrays
% Element-wise AND operation
andArray = boolArray & [false, true, false; true, false, true];

% Element-wise OR operation
orArray = boolArray | [false, true, false; true, false, true];

% NOT operation on array
notArray = ~boolArray;

% Displaying the results
disp('Boolean array:');
disp(boolArray);

disp('Element-wise AND operation:');
disp(andArray);

disp('Element-wise OR operation:');
disp(orArray);

disp('NOT operation on array:');
disp(notArray);

% Summary:
% - Boolean values in MATLAB are represented as logical data types.
% - Standard boolean operations include AND, OR, and NOT.
% - Boolean values can be stored in arrays and matrices.
% - Boolean operations can be performed element-wise on arrays.