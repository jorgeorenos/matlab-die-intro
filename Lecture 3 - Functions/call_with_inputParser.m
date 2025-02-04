

x = rand(10, 1); 

% One way to call complexFunction.m 
r = complexFunction(x, 'Theta', 1)


% We don't set Gamma 
r = complexFunction(x, 'Theta', 1)

% Invalid Gamma
r = complexFunction(x, 'Theta', 1, 'Gamma', -1)

% Valid and required Gamma
r = complexFunction(x, 1, 'Theta', 1)


r = complexFunction(x, 1, 'Theta', 1)

r = complexFunction(x, 'Gamma', 2, 'Epsilon', 1, 'Theta', 0)