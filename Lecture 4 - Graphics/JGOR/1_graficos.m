%{
Como hacer un gráfico en Matlab

Veremos los tipos de gráficos más comúnes en el DIE comenzando por la
construcción de un gráfico simple que contenga algunas líneas, legenda,
título principal y en los ejes, entre otras adiciones.
%}

% Comenzamos definiendo en espacio en el que vamos a gráficar
figure();

set(gcf,...
    'defaultaxesfontsize', 12, ...
    'Position', [350 120 1200 700]);

ax = axes();


% Ahora haremos nuestro primer gráfico
figure();

set(gcf,...
    'defaultaxesfontsize', 12, ...
    'Position', [350 120 1200 700]);

ax = axes();

x = linspace(1,10);

plot(x, sin(x), 'Linewidth', 1.5, 'marker', 'o', 'Markersize', 5,...
    'Color', 'b', 'MarkerFaceColor', [0.969 0.816 0.125],...
    'MarkerEdgeColor', 'none');

% El siguiente paso es añadir otras lineas al gráfico
figure();

set(gcf,...
    'defaultaxesfontsize', 12, ...
    'Position', [350 120 1200 700]);

ax = axes();

plot(x, sin(x), 'Linewidth', 1.5, 'marker', 'o', 'Markersize', 5,...
    'Color', 'b', 'MarkerFaceColor', [0.969 0.816 0.125],...
    'MarkerEdgeColor', 'none');

hold on

plot(x, cos(x), 'Color', 'r', 'Linewidth', 1.5);
plot(x, log(x), '--g', 'Linewidth', 1.5);

hold off

title({'Múltiples gráficos', 'enero 2025'});

legend({'Seno', 'Coseno', 'ln'}, 'Location', 'northwest');

% Combinar graficos
% Es posible combinar tipos de gráficos
r = rand(1,100);
y = sin(x)-r;
b = [y; r]';

% El siguiente paso es añadir otras lineas al gráfico
figure();

set(gcf,...
    'defaultaxesfontsize', 12, ...
    'Position', [350 120 1200 700]);

ax = axes();

bar(b, 'stacked');

hold on
plot(sin(x), 'Color', 'k', 'Linewidth', 6);
plot(sin(x), 'Color', 'w', 'Linewidth', 3);

ylim([-2, 1.3]);

hold off

legend({'Azul', 'Naranja'}, 'Location', 'Best');

title({'Contribuciones', 'Febrero 25'});

% Subplots
figure();

set(gcf,...
    'defaultaxesfontsize', 12, ...
    'Position', [350 120 1000 700]);

subplot(2,1,1);
plot(x, sin(x), 'Linewidth', 1.5, 'marker', 'o', 'Markersize', 3,...
    'Color', 'b', 'MarkerFaceColor', [0.969 0.816 0.125],...
    'MarkerEdgeColor', 'none');

title({'Función seno', 'Febrero 25'});

subplot(2,1,2);
bar(b, 'stacked');

hold on
plot(sin(x), 'Color', 'k', 'Linewidth', 6);
plot(sin(x), 'Color', 'w', 'Linewidth', 3);

ylim([-2, 1.3]);

hold off

legend({'Azul', 'Naranja'}, 'Location', 'Best');

title({'Contribuciones', 'Febrero 25'});




