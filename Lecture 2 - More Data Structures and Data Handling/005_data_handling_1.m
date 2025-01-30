% MATLAB Script: Importing and Exporting Data Using Tables
% This script demonstrates how to load and save data using tables in MATLAB.

% Clear workspace and command window
clear; clc;

% Define file paths
excelFile = 'sample_data.xlsx';
csvFile = 'sample_data.csv';

%% Import Data
% Read Excel file into a table
tableExcel = readtable(excelFile);

disp('Data from Excel file:');
disp(tableExcel);

% Read CSV file into a table
tableCSV = readtable(csvFile);

disp('Data from CSV file:');
disp(tableCSV);

%% Export Data
% Modify the table (e.g., add a new column)
tableExcel.NewColumn = tableExcel.Age .* 2;

% Save the modified table back to an Excel file
newExcelFile = 'modified_data.xlsx';
writetable(tableExcel, newExcelFile);

disp(['Modified data saved to: ', newExcelFile]);

% Save the table to a new CSV file
newCSVFile = 'modified_data.csv';
writetable(tableExcel, newCSVFile);

disp(['Modified data saved to: ', newCSVFile]);
