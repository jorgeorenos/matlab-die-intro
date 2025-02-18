%1.SIMULACIÓN DE UN SHOCK DE TASA DE INTERÉS DE PM
clear all;
clc;
% Carga de modelo y solución al workspace
readmod02;

% Datos históricos
data = databank.fromCSV('data/Octubre_2018.csv', 'Delimiter=', ';');
dbplot(data); %visualización general

% Periodo de pronósticos
startSim = data.i.End+1;
endSim = startSim+29;

g1_sim = simulate(g, data, startSim:endSim,...
            'Anticipate=', false,...
            'DbOverlay=', true);

% Gráficas
dbplot(g1_sim*get(g, 'xlist'))

figure;
set( ...
    gcf, ...
    'defaultaxesfontsize',12, ...
    'Position', [1 42.0182 1400.1 700.73] ...
    );

subplot(1,2,1);

plot(g1_sim.v_cpi, '--r');
hold on
plot(data.v_cpi, '-b')

legend({'Pronóstico', 'Historia'});

title('Pronósticos inflación');

hold off

subplot(1,2,2);

plot(g1_sim.i, '--r');
hold on
plot(data.i, '-b')

legend({'Pronóstico', 'Historia'});

title('Pronósticos tasa de interés líder');

hold off


%% Contrafactuales
%{
A veces se requiere obtener la respuesta del modelo ante ciertos escenarios
hipoteticos, pero probables de que sucedan. 
%}

% Contrafactual 1
% Aumento de la actividad económica externa
% Base de datos
alt1 = data;
             
% Trimestres de anclaje
E1_dates = startSim:startSim+3

alt1.v_y_star(E1_dates) = [2.95, 3.5, 3.25, 3];
alt1.v_y_star.plot;

% Plan de simulación
planSim = plan(g, startSim:endSim);
% Variable a exogenizar (Anclaje)
planSim = exogenize(planSim,{'v_y_star'}, E1_dates);
% Variable a endogenizar 
planSim = endogenize(planSim,{'s_v_y_star'}, E1_dates); 


E1_sim = simulate(g,...
                  alt1,...
                  startSim:endSim,...
                  'plan', planSim,...
                  'Anticipate=', false,...
                  'DbOverlay=', true);
              
E2_sim = simulate(g,...
                  alt1,...
                  startSim:endSim,...
                  'plan', planSim,...
                  'Anticipate=', true,...
                  'DbOverlay=', true);

% Comparativo entre escenario libre y de simulación
figure;
set( ...
    gcf, ...
    'defaultaxesfontsize',12, ...
    'Position', [1 42.0182 1400.1 700.73] ...
    );

% Inflación libre
subplot(1,2,1);

plot(g1_sim.v_cpi, '--r');
hold on
plot(E1_sim.v_cpi, '--g');
plot(E2_sim.v_cpi, '--k');
plot(data.v_cpi, '-b')

legend({'Libre', 'no anticipado', 'anticipado', 'Historia'});

title('Pronósticos inflación', 'Comparativo');

hold off

% tasa libre
subplot(1,2,2);

plot(g1_sim.i, '--r');
hold on
plot(E1_sim.i, '--g')
plot(E2_sim.i, '--k')
plot(data.i, '-b')

legend({'Libre', 'no anticipado', 'anticipado', 'Historia'});

title('Pronósticos tasa de interés líder', 'Comparativo');

hold off

% Contrafactual 2 combinado
%{
Ahora se quiere ver la respuesta del modelo dando una trayectoria de
producto externo e interno más elevada de forma simultanea
%}

alt2 = data;
             
% Trimestres de anclaje
E1_dates = startSim:startSim+3;

alt2.v_y_star(E1_dates) = [2.95, 3.5, 3.25, 3];
alt2.v_y(E1_dates) = [2.87, 3.75, 4.10, 3.9];
[data.v_y_star, data.v_y, alt2.v_y_star, alt2.v_y]

% Plan de simulación
planSim = plan(g, startSim:endSim);
% Variable a exogenizar (Anclaje)
planSim = exogenize(planSim,{'v_y_star', 'v_y'}, E1_dates);
% Variable a endogenizar 
planSim = endogenize(planSim,{'s_v_y_star', 's_v_y'}, E1_dates); 

E2_sim = simulate(g,...
                  alt2,...
                  startSim:endSim,...
                  'plan', planSim,...
                  'Anticipate=', false,...
                  'DbOverlay=', true);

% Comparativo entre escenario libre y de simulación
figure;
set( ...
    gcf, ...
    'defaultaxesfontsize',12, ...
    'Position', [1 42.0182 1400.1 700.73] ...
    );

% Inflación
subplot(1,2,1);

plot(g1_sim.v_cpi, '--r');
hold on
plot(E1_sim.v_cpi, '--g');
plot(E2_sim.v_cpi, '--', 'color', '#7E2F8E');
plot(data.v_cpi, '-b')

legend({'Libre', 'Condicional 1', 'Condicional 2', 'Historia'});

title('Pronósticos inflación', 'Comparativo');

hold off

% tasa libre
subplot(1,2,2);

plot(g1_sim.i, '--r');
hold on
plot(E1_sim.i, '--g')
plot(E2_sim.i, '--', 'color', '#7E2F8E');
plot(data.i, '-b')

legend({'Libre', 'Condicional 1', 'Condicional 2', 'Historia'});

title('Pronósticos tasa de interés líder', 'Comparativo');

hold off