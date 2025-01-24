% Explanation of exceptions in MATLAB:
%
% In MATLAB, exceptions are used to handle errors that occur during the execution of a program.
% The try-catch block is used to catch and handle these errors.
%
% The try block contains the code that may cause an error.
% If an error occurs, the catch block is executed.
% The catch block can access the exception information through the MException object (ME in this case).
%
% The MException object contains information about the error, such as the error message and identifier.
% The identifier is a unique string that identifies the type of error.
%
% In the catch block, you can use the identifier to handle specific known errors.
% If the error is not one of the known errors, you can rethrow the error using the rethrow function.
% This allows the error to be raised again and handled by another try-catch block or terminate the program.
%
% Example of handling specific known errors:
%
% try
%     % Code that may cause an error
% catch ME
%     if strcmp(ME.identifier, 'MATLAB:someSpecificError')
%         % Handle the specific known error
%     elseif strcmp(ME.identifier, 'MATLAB:anotherSpecificError')
%         % Handle another specific known error
%     else
%         % Rethrow unknown errors
%         rethrow(ME);
%     end
% end
%
% This structure allows you to handle different types of errors in different ways,
% providing more control over the error handling process.

% -------------------------------------------------------------------------

% Example of handling file I/O errors:
try
    % Attempt to open a file
    fid = fopen('nonexistentfile.txt', 'r');
    if fid == -1
        error('MATLAB:FileIOError', 'File could not be opened.');
    end
    % Read data from the file
    data = fread(fid);
    fclose(fid);
catch ME
    if strcmp(ME.identifier, 'MATLAB:FileIOError')
        % Handle file I/O error
        disp('Error: Unable to open the specified file.');
    else
        % Rethrow unknown errors
        rethrow(ME);
    end
end

% Example of handling matrix dimension errors:
try
    % Attempt to perform matrix multiplication with incompatible dimensions
    A = [1, 2; 3, 4];
    B = [1, 2, 3];
    C = A * B;
catch ME
    if strcmp(ME.identifier, 'MATLAB:dimagree')
        % Handle matrix dimension error
        disp('Error: Matrix dimensions must agree.');
    else
        % Rethrow unknown errors
        rethrow(ME);
    end
end

% Example of handling invalid input errors:
try
    % Attempt to calculate the square root of a negative number
    x = -1;
    y = sqrt(x);
catch ME
    if strcmp(ME.identifier, 'MATLAB:nonPositiveInput')
        % Handle invalid input error
        disp('Error: Input must be a non-negative number.');
    else
        % Rethrow unknown errors
        rethrow(ME);
    end
end