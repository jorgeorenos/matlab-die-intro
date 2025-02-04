function y = mysin_looped(x)

T = length(x); 
y = zeros(T,1); 
for i = 1:T 
    y(i) = sin(x(i));
end

end 