% This script explains the basics of loops in MATLAB with examples.

% FOR LOOP
% A for loop is used to repeat a group of statements a fixed, predetermined number of times.
% Syntax:
% for index = start_value:end_value
%     statements
% end

% Example: Print numbers from 1 to 5
for i = 1:5
    fprintf('Number: %d\n', i);
end

% WHILE LOOP
% A while loop repeats a group of statements an indefinite number of times under control of a logical condition.
% Syntax:
% while condition
%     statements
% end

% Example: Print numbers from 1 to 5 using a while loop
i = 1;
while i <= 5
    fprintf('Number: %d\n', i);
    i = i + 1;
end

% NESTED LOOPS
% You can nest for loops and while loops within each other.
% Syntax:
% for index1 = start_value1:end_value1
%     for index2 = start_value2:end_value2
%         statements
%     end
% end

% Example: Nested for loop to print a 3x3 matrix of numbers
for i = 1:3
    for j = 1:3
        fprintf('(%d, %d) ', i, j);
    end
    fprintf('\n');
end

% BREAK STATEMENT
% The break statement terminates the execution of a for or while loop.
% Syntax:
% break

% Example: Using break to exit a loop when a condition is met
for i = 1:10
    if i == 6
        break; % Exit the loop when i equals 6
    end
    fprintf('Number: %d\n', i);
end

% CONTINUE STATEMENT
% The continue statement passes control to the next iteration of the for or while loop.
% Syntax:
% continue

% Example: Using continue to skip an iteration when a condition is met
for i = 1:10
    if mod(i, 2) == 0
        continue; % Skip the iteration if i is even
    end
    fprintf('Odd Number: %d\n', i);
end

% These are the basic concepts of loops in MATLAB. You can use these constructs to control the flow of your programs.