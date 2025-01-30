% Tutorial on Cell Arrays in MATLAB

% Introduction
% Cell arrays are a type of data structure in MATLAB that allow you to store
% arrays of different sizes and types. Each element of a cell array is a
% "cell" that can contain any type of data, including numbers, strings,
% other arrays, or even other cell arrays.

% Creating Cell Arrays
% You can create a cell array using the `cell` function or by using curly braces `{}`.

% Example 1: Creating an empty cell array
C1 = cell(3, 2); % Creates a 3x2 cell array with empty cells

% Example 2: Creating a cell array with initial values
C2 = {1, 'text'; [1, 2, 3], magic(3)};

% Accessing Data in Cell Arrays
% You can access the contents of a cell using curly braces `{}` and the cell itself using parentheses `()`.

% Example 3: Accessing cell contents
data1 = C2{1, 1}; % Accesses the number 1
data2 = C2{1, 2}; % Accesses the string 'text'
data3 = C2{2, 1}; % Accesses the array [1, 2, 3]
data4 = C2{2, 2}; % Accesses the 3x3 magic square

% Example 4: Accessing the cell itself
cell1 = C2(1, 1); % Accesses the cell containing the number 1
cell2 = C2(1, 2); % Accesses the cell containing the string 'text'

% Modifying Cell Arrays
% You can modify the contents of a cell array by assigning new values to specific cells.

% Example 5: Modifying cell contents
C2{1, 1} = 42; % Changes the first cell to the number 42
C2{2, 2} = 'new text'; % Changes the last cell to the string 'new text'

% Important Points
% 1. Cell arrays can store different types of data in each cell.
% 2. Use curly braces `{}` to access or modify the contents of a cell.
% 3. Use parentheses `()` to access or modify the cell itself.
% 4. Cell arrays are useful for storing heterogeneous data.

% Common Errors
% 1. Using parentheses `()` instead of curly braces `{}` to access cell contents.
%    This will return the cell itself, not its contents.
%    Example:
%    wrongData = C2(1, 1); % This returns a cell, not the number 42

% 2. Trying to perform operations on cell arrays without accessing their contents.
%    Example:
%    result = C2{1, 1} + C2{2, 1}; % This works because it accesses the contents
%    wrongResult = C2(1, 1) + C2(2, 1); % This will cause an error

% 3. Mixing up row and column indices when accessing or modifying cell arrays.
%    Example:
%    correctData = C2{2, 1}; % Accesses the array [1, 2, 3]
%    wrongData = C2{1, 2}; % This accesses the string 'text', not the array

