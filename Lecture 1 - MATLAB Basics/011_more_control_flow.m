% This script demonstrates different ways to control the flow of a program
% without using loops or if statements.

% Using switch-case statement
value = 2;
switch value
    case 1
        disp('Value is 1');
    case 2
        disp('Value is 2');
    case 3
        disp('Value is 3');
    otherwise
        disp('Value is not 1, 2, or 3');
end

% Using try-catch for error handling
try
    % Attempt to execute code that may cause an error
    result = 10 / 0; % This will cause an error
catch ME
    % Handle the error
    disp('An error occurred:');
    disp(ME.message);
end

% Using return to exit a function early
function earlyReturnExample()
disp('This will be displayed');
return; % Exit the function early
disp('This will not be displayed');
end

earlyReturnExample();

% Using break to exit a switch-case statement
value = 2;
switch value
    case 1
        disp('Value is 1');
    case 2
        disp('Value is 2');
        break; % Exit the switch-case statement
    case 3
        disp('Value is 3');
    otherwise
        disp('Value is not 1, 2, or 3');
end