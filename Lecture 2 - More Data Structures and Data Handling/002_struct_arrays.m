% Tutorial on Working with Struct Arrays in MATLAB

% Struct arrays are a way to group related data using data containers called structures.
% Each structure can contain multiple fields, each field can contain any type of data.

% Creating a Simple Struct Array
student(1).name = 'John Doe';
student(1).age = 20;
student(1).major = 'Computer Science';

student(2).name = 'Jane Smith';
student(2).age = 22;
student(2).major = 'Mathematics';

% Display the struct array
disp(student);

% Accessing Data in a Struct Array
% You can access the data in a struct array using dot notation.
disp(student(1).name);  % Output: John Doe
disp(student(2).age);   % Output: 22

% Adding New Fields to a Struct Array
% You can add new fields to an existing struct array.
student(1).GPA = 3.8;
student(2).GPA = 3.9;

% Display the updated struct array
disp(student);

% Looping Through a Struct Array
% You can loop through a struct array using a for loop.
for i = 1:length(student)
    fprintf('Name: %s, Age: %d, Major: %s, GPA: %.1f\n', ...
        student(i).name, student(i).age, student(i).major, student(i).GPA);
end


% Sorting Struct Arrays
% You can sort a struct array based on a specific field.
[~, idx] = sort([student.age]);
sortedStudents = student(idx);

% Display the sorted struct array
disp(sortedStudents);