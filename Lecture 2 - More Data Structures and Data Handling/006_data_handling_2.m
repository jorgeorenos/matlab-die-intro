% MATLAB Script: Working with Timetables
% This script demonstrates how to handle dates, create timetables, import CSV files with timestamps, and perform synchronization and filtering.

% Clear workspace and command window
clear; clc;

%% Working with Dates in MATLAB
% Creating a series of dates
dates = datetime(2023,1,1) + days(0:9);
disp('Generated Dates:');
disp(dates);

% Formatting dates
datesFormatted = datestr(dates, 'yyyy-mm-dd');
disp('Formatted Dates:');
disp(datesFormatted);

%%
% Explanation of Datetimes in MATLAB
% MATLAB provides a powerful datetime type for handling dates and times.
% The datetime type allows you to create arrays of dates and times, perform arithmetic operations on them, and format them for display.
%
% Key functions and features:
% - `datetime`: Create datetime arrays.
% - `datestr`: Convert datetime arrays to string representations.
% - `datevec`: Convert datetime arrays to date vectors.
% - `datenum`: Convert datetime arrays to serial date numbers.
% - `year`, `month`, `day`, `hour`, `minute`, `second`: Extract components of datetime arrays.
% - `caldays`, `calmonths`, `calyears`: Perform calendar arithmetic.
%
% Example:
% dates = datetime(2023,1,1) + days(0:9);
% This creates an array of datetime values starting from January 1, 2023, and incrementing by one day for 10 days.
%
% Formatting:
% You can format datetime arrays using the `datestr` function. For example:
% datesFormatted = datestr(dates, 'yyyy-mm-dd');
% This converts the datetime array to a string array with the format 'yyyy-mm-dd'.

%% Creating a Timetable
% Generate sample data
values = rand(10,1) * 100;
tt = timetable(dates', values);

disp('Generated Timetable:');
disp(tt);

%% Importing CSV File with Dates
% Define file path
csvFile = 'time_series_data.csv';

ttImported = readtimetable(csvFile);
disp('Imported Timetable:');
disp(ttImported);

%% Synchronizing Timetables
% Creating another timetable with a different time series
dates2 = datetime(2023,1,1) + days(0:2:18);
values2 = rand(length(dates2),1) * 100;
tt2 = timetable(dates2', values2);

% Synchronize both timetables
ttSynced = synchronize(tt, tt2);
disp('Synchronized Timetable:');
disp(ttSynced);

%% Filtering by Month
% Select only data from January 2023
janData = tt(year(tt.dates) == 2023 & month(tt.dates) == 1, :);
disp('Filtered Data (January 2023):');
disp(janData);

%% Exporting the Processed Timetable
newCSVFile = 'filtered_data.csv';
writetable(timetable2table(janData), newCSVFile);
disp(['Filtered data saved to: ', newCSVFile]);
