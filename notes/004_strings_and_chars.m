% Strings and Characters in MATLAB

% In MATLAB, strings and characters are used to represent text. There are
% several ways to create and manipulate text data in MATLAB, and understanding
% the differences between strings and character arrays is important for
% effective programming.

% Character Arrays:
% A character array is a sequence of characters. Each character is stored as
% an element of the array. Character arrays are created using single quotes (' ').

charArray = 'Hello, World!';

% Properties of Character Arrays:
% - Each character in the array is an element.
% - Character arrays are 1-dimensional arrays of type 'char'.
% - They are compatible with many MATLAB functions that operate on arrays.

% Useful Functions for Character Arrays:
% - length: Returns the number of characters in the array.
len = length(charArray);

% - size: Returns the size of the array.
sz = size(charArray);

% - upper: Converts all characters to uppercase.
upperCharArray = upper(charArray);

% - lower: Converts all characters to lowercase.
lowerCharArray = lower(charArray);

% - strfind: Finds occurrences of a substring within the character array.
occurrences = strfind(charArray, 'World');

% Strings:
% Strings in MATLAB are represented using double quotes (" "). Strings are
% a newer data type introduced in MATLAB R2016b and provide more functionality
% and flexibility compared to character arrays.

str = "Hello, World!";

% Properties of Strings:
% - Strings are arrays of type 'string'.
% - They can contain multiple pieces of text (string arrays).
% - Strings support a wide range of functions for text manipulation.

% Useful Functions for Strings:
% - strlength: Returns the number of characters in the string.
strLen = strlength(str);

% - strjoin: Joins multiple strings into a single string.
joinedStr = strjoin(["Hello", "World"], ", ");

% - split: Splits a string into multiple strings based on a delimiter.
splitStr = split(str, ", ");

% - contains: Checks if a string contains a substring.
containsHello = contains(str, "Hello");

% - replace: Replaces occurrences of a substring with another substring.
replacedStr = replace(str, "World", "MATLAB");

% - strcat: Concatenates strings.
concatenatedStr = strcat("Hello", " ", "World!");

% Differences between Character Arrays and Strings:
% - Character arrays are older and more compatible with traditional MATLAB
%   functions that operate on arrays.
% - Strings provide more advanced text manipulation capabilities and are
%   generally easier to work with for complex text operations.
% - Strings can be more efficient for handling large amounts of text data.

% Example of using both Character Arrays and Strings:
charArrayExample = 'MATLAB';
stringExample = "MATLAB";

% Convert character array to string
convertedString = string(charArrayExample);

% Convert string to character array
convertedCharArray = char(stringExample);

% Example of errors when using strings as chars or chars as strings:

% Trying to use a string with a function that expects a character array
try
    % This will cause an error because 'strfind' expects a character array
    errorExample1 = strfind(str, 'World');
catch ME
    disp('Error using strfind with a string:');
    disp(ME.message);
end

% Trying to use a character array with a function that expects a string
try
    % This will cause an error because 'contains' expects a string
    errorExample2 = contains(charArray, 'World');
catch ME
    disp('Error using contains with a character array:');
    disp(ME.message);
end