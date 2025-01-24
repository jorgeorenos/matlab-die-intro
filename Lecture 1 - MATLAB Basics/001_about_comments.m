% This script demonstrates the usage of comments in MATLAB.

% Single-line comments:
% Single-line comments in MATLAB start with a percent sign (%) and continue to the end of the line.
% They are used to add brief explanations or notes about the code.

%{
Multi-line comments:
Multi-line comments in MATLAB are enclosed between %{ and %}.
They are useful for adding longer descriptions or temporarily disabling blocks of code.
%}

% Important notes:
% - Comments do not affect the execution of the code.
% - Code is documentation. If it is self-explanatory, don't comment it. If
% it is to complicated, refactor it.
% Why? NOBODY MAINTAINS COMMENTS!

% Clean Code Principles Regarding Comments:
% 1. Comments Do Not Make Up for Bad Code:
%    - If you need to comment on a piece of code to explain what it does, consider refactoring the code to make it self-explanatory.
% 2. Explain Why, Not What:
%    - Use comments to explain the reasoning behind a decision, not to describe what the code is doing.
% 3. Avoid Redundant Comments:
%    - Do not add comments that simply restate the code. For example, avoid comments like "Increment i by 1" when the code is "i = i + 1".
% 4. Keep Comments Up-to-Date:
%    - Ensure that comments are updated when the code changes. Outdated comments can be misleading.
% 5. Use Comments to Clarify Intent:
%    - When the code's intent is not immediately obvious, use comments to clarify the purpose and logic behind it.
% 6. Avoid Commented-Out Code:
%    - Do not leave blocks of commented-out code. Use version control systems to keep track of code history instead.
% 7. Use Proper Formatting:
%    - Format comments consistently and use proper grammar and punctuation to enhance readability.