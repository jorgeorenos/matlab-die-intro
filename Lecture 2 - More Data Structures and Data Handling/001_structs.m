% MATLAB Script: Introduction to Structs in MATLAB
% This script introduces the concept of structs, explaining their usage
% and demonstrating their functionality with examples.

%% 1. What is a Struct?
% In programming languages with static typing (e.g., C, Java), structures (structs)
% are used to group related data together under a single entity.
% Structs allow multiple fields of different data types to be stored and accessed easily.
%
% MATLAB provides a similar feature using the 'struct' data type, which
% allows users to organize and store heterogeneous data.

%% 2. Creating a Struct in MATLAB
% A struct in MATLAB consists of fields that store data. Each field can hold any data type.

% Example 1: Creating a simple struct
student = struct();
student.name = 'Alice';
student.age = 21;
student.grade = 'A';
student.scores = [90, 85, 88];

% Display the struct
disp('Student Struct:');
disp(student);

%% 3. Accessing Struct Fields
% You can access fields using dot notation.

% Accessing individual fields
fprintf('Name: %s\n', student.name);
fprintf('Age: %d\n', student.age);
fprintf('Grade: %s\n', student.grade);

% Accessing array data within the struct
fprintf('Scores: ');
disp(student.scores);

%% 4. Nested Structs
% Structs can contain other structs, forming nested structures.

% Example 2: Creating a nested struct
student.contact.phone = '123-456-7890';
student.contact.email = 'alice@example.com';

% Displaying nested struct fields
fprintf('Phone: %s\n', student.contact.phone);
fprintf('Email: %s\n', student.contact.email);

%% 5. Creating Structs in Loops with Suffixes
% Example 5: Creating multiple structs dynamically with suffixes

fields = ['a'; 'b'; 'c'];
s = struct();

for i = 1:length(fields)
    
    s.(fields(i)) = randn();
    
    s.([fields(i), '_suffix']) = s.(fields(i))^2;
    
end

disp('Dynamically Created Students:');
disp(s);

%% 6. Adding and Removing Fields
% You can dynamically add or remove fields from structs.

ss.a = 1;
ss.b = 2;
ss.c = 3';

disp(ss);

ss = rmfield(ss, 'a');

disp(ss);