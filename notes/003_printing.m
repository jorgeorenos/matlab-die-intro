% Explanation of disp and string formatting in MATLAB

% The `disp` function in MATLAB is used to display text or the value of a variable.
% It is a simple way to output information to the Command Window.

% Basic usage:
% disp('Hello, World!')

% Displaying the value of a variable:
% x = 42;
% disp(x)

% You can also display the contents of arrays or matrices:
% A = [1, 2, 3; 4, 5, 6];
% disp(A)

% Formatting strings:
% MATLAB provides several ways to format strings for display.

% 1. Using `sprintf`:
% The `sprintf` function formats data into a string, which can then be displayed using `disp`.
% Example:
% name = 'John';
% age = 30;
% str = sprintf('My name is %s and I am %d years old.', name, age);
% disp(str)

% 2. Using `fprintf`:
% The `fprintf` function formats and prints data to the Command Window or a file.
% Example:
% fprintf('My name is %s and I am %d years old.\n', name, age);

% 3. Using `compose`:
% The `compose` function creates formatted strings from data.
% Example:
% str = compose('My name is %s and I am %d years old.', name, age);
% disp(str)

% Difference between `compose` and `sprintf`:
%
% `sprintf`:
% - `sprintf` returns a character array with the specified format.
% - It is useful when a character array is needed for further manipulation or for functions that do not accept string objects.
% - Example:
%   name = 'John';
%   age = 30;
%   str = sprintf('My name is %s and I am %d years old.', name, age);
%   disp(str)
%
% `compose`:
% - `compose` returns a string array with the specified format.
% - It is useful when working with string arrays and taking advantage of the additional functionalities of string objects.
% - Example:
%   name = "John";
%   age = 30;
%   str = compose('My name is %s and I am %d years old.', name, age);
%   disp(str)
%
% 4. Concatenating strings:
% You can concatenate strings using square brackets or the `strcat` function.
% Example:
% str1 = 'Hello, ';
% str2 = 'World!';
% str = [str1, str2];
% disp(str)

% Example using `strcat`:
% str = strcat('Hello, ', 'World!');
% disp(str)

% 5. Using `string` objects:
% MATLAB also supports string objects, which provide more functionality for string manipulation.
% Example:
% str = "Hello, World!";
% disp(str)

% You can also use string objects with formatted data:
% name = "John";
% age = 30;
% str = "My name is " + name + " and I am " + age + " years old.";
% disp(str)

% These are some of the common ways to display and format strings in MATLAB.
% Depending on your specific needs, you can choose the method that works best for you.