%{
Ciclos y gráficos
En ocasiones se cuenta con múltiples series que queremos graficar por lo
que se hace conveniente usar ciclos para hacerlo
%}

% Dentro de los procesos que se tienen en la metodología de evaluación se
% hace uso de las estructuras para guardar distintos tipos de salidas y los
% ciclos facilitan la tarea al momento de graficar los resultados.

y = struct();
x = linspace(1,10);
r = -1.5 + 3*rand(1,10);

for i = 1:10
   if i == 1
   y.(strcat('y_', num2str(i))) = log(x)'; 
   
   else
   y.(strcat('y_', num2str(i))) = r(i)*log(x)';
   end
   name_i{i} = strcat('y_', num2str(i));       
end

% Inicializamos el gráfico
figure();
   
set(gcf, 'defaultaxesfontsize', 12, ...
    'Position', [350 120 1000 700]);

% Utilizamos el ciclo para graficar
for i = 1:10
   plot(y.(strcat('y_', num2str(i))));
   hold on   
end

lgd = legend(name_i, 'Interpreter', 'none', 'Location', 'southoutside');
legend('boxoff')
lgd.NumColumns = 5;

% Podemos usar condicionales para darle una mejor vista al gráfico
figure();
   
set(gcf, 'defaultaxesfontsize', 12, ...
    'Position', [350 120 1000 700]);

for i = 1:10
   if i == 1
   plot(y.(strcat('y_', num2str(i))), 'Linewidth', 2, 'marker', 'o',...
       'MarkerSize', 2);
   
   else
   plot(y.(strcat('y_', num2str(i))), '--');
   end
   
   hold on   
end

lgd = legend(name_i, 'Interpreter', 'none', 'Location', 'southoutside');
legend('boxoff')
lgd.NumColumns = 5;

% También podemos usar los ciclos con los subplots
figure();

set(gcf, 'defaultaxesfontsize', 12, ...
    'Position', [350 100 700 800]);

for i = 1:10

subplot(5,2,i)

plot(y.(strcat('y_', num2str(i))));

title(name_i{i}, 'Interpreter', 'none')

end



