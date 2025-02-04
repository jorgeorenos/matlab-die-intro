function result = mysum(a,b,varargin) 

    disp(nargin); 
    
    disp(varargin); 
    
    c = 0; 
    d = 0; 
    
    % Check # of arguments
    if nargin < 2
       error('Número de argumentos incorrecto');
    elseif nargin == 3
        c = varargin{1}; 
    elseif nargin == 4 
        c = varargin{1}; 
        d = varargin{2}; 
    end
    
    last_sum = c + d; 

    result = a + b + last_sum;  
    
    % disp(nargout); % we won't use it 

end