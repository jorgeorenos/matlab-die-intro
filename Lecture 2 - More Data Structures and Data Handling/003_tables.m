% MATLAB Tutorial: Using and Creating Tables

% Tables are a type of data structure in MATLAB that are useful for storing
% heterogeneous data. They can store variables of different types and sizes.

% Creating a Table from Arrays
% Let's create a table from arrays of different types.

% Define arrays
Name = {'John'; 'Jane'; 'Tom'; 'Lucy'};
Age = [28; 34; 22; 29];
Height = [5.9; 5.7; 6.1; 5.5];
Weight = [170; 150; 180; 140];

% Create table
T = table(Name, Age, Height, Weight);

% Display the table
disp('Table created from arrays:');
disp(T);

% Creating a Table from Struct Arrays
% You can also create a table from an array of structs.

% Define struct array
S(1).Name = 'John';
S(1).Age = 28;
S(1).Height = 5.9;
S(1).Weight = 170;

S(2).Name = 'Jane';
S(2).Age = 34;
S(2).Height = 5.7;
S(2).Weight = 150;

S(3).Name = 'Tom';
S(3).Age = 22;
S(3).Height = 6.1;
S(3).Weight = 180;

S(4).Name = 'Lucy';
S(4).Age = 29;
S(4).Height = 5.5;
S(4).Weight = 140;

% Convert struct array to table
T2 = struct2table(S);

% Display the table
disp('Table created from struct array:');
disp(T2);

% Useful Table Functionalities

% Adding a new column
% Let's add a new column 'BMI' to the table.
BMI = Weight ./ (Height .^ 2);
T.BMI = BMI;

disp('Table after adding BMI column:');
disp(T);

% Filtering rows
% Filter rows where Age is greater than 30
filteredTable = T(T.Age > 30, :);

disp('Filtered table (Age > 30):');
disp(filteredTable);

% Sorting rows
% Sort the table by Age
sortedTable = sortrows(T, 'Age');

disp('Table sorted by Age:');
disp(sortedTable);

% Removing rows
% Remove rows where Weight is less than 160
T(T.Weight < 160, :) = [];

disp('Table after removing rows with Weight < 160:');
disp(T);

% Summary of the table
% Get a summary of the table
summary(T);

% Creating a Table Without Predefining Variables
% You can create a table directly by specifying the data within the table function.

% Create table
T3 = table({'John'; 'Jane'; 'Tom'; 'Lucy'}, [28; 34; 22; 29], [5.9; 5.7; 6.1; 5.5], [170; 150; 180; 140], ...
    'VariableNames', {'Name', 'Age', 'Height', 'Weight'});

% Display the table
disp('Table created without predefining variables:');
disp(T3);

% Equivalence between MATLAB Tables and Pandas DataFrames
%
% MATLAB tables and Pandas DataFrames in Python are similar in many ways. Both are used to store
% and manipulate heterogeneous data, and they provide a variety of functionalities for data analysis.
%
% Here are some key equivalences:
%
% 1. Creation:
%    - MATLAB: T = table(Name, Age, Height, Weight);
%    - Pandas: df = pd.DataFrame({'Name': Name, 'Age': Age, 'Height': Height, 'Weight': Weight})
%
% 2. Display:
%    - MATLAB: disp(T);
%    - Pandas: print(df)
%
% 3. Adding a new column:
%    - MATLAB: T.BMI = BMI;
%    - Pandas: df['BMI'] = BMI
%
% 4. Filtering rows:
%    - MATLAB: filteredTable = T(T.Age > 30, :);
%    - Pandas: filtered_df = df[df['Age'] > 30]
%
% 5. Sorting rows:
%    - MATLAB: sortedTable = sortrows(T, 'Age');
%    - Pandas: sorted_df = df.sort_values(by='Age')
%
% 6. Removing rows:
%    - MATLAB: T(T.Weight < 160, :) = [];
%    - Pandas: df = df[df['Weight'] >= 160]
%
% 7. Summary:
%    - MATLAB: summary(T);
%    - Pandas: df.describe()
%
% Both MATLAB tables and Pandas DataFrames are powerful tools for data manipulation and analysis,
% and understanding their equivalences can help you transition between MATLAB and Python more easily.