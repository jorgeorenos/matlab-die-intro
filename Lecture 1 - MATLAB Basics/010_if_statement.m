% MATLAB Script to Explain and Demonstrate the Use of If Statements

% If statements in MATLAB are used to execute a block of code conditionally.
% The basic syntax of an if statement is as follows:
%
% if condition
%     statements
% end
%
% The 'condition' is a logical expression that evaluates to true or false.
% If the condition is true, the statements inside the if block are executed.
% If the condition is false, the statements inside the if block are skipped.

% Example 1: Simple if statement
a = 5;
if a > 0
    disp('a is positive');
end
% In this example, the condition 'a > 0' is true, so the message 'a is positive' is displayed.

% Example 2: If-else statement
b = -3;
if b > 0
    disp('b is positive');
else
    disp('b is non-positive');
end
% In this example, the condition 'b > 0' is false, so the else block is executed, displaying 'b is non-positive'.

% Example 3: If-elseif-else statement
c = 0;
if c > 0
    disp('c is positive');
elseif c < 0
    disp('c is negative');
else
    disp('c is zero');
end
% In this example, the condition 'c > 0' is false, so the elseif condition 'c < 0' is checked.
% Since 'c < 0' is also false, the else block is executed, displaying 'c is zero'.

% Example 4: Nested if statements
d = 10;
if d > 0
    if mod(d, 2) == 0
        disp('d is positive and even');
    else
        disp('d is positive and odd');
    end
else
    disp('d is non-positive');
end
% In this example, the outer if condition 'd > 0' is true, so the inner if statement is evaluated.
% The inner if condition 'mod(d, 2) == 0' is true, so 'd is positive and even' is displayed.