%% Funciones impulso respuesta
%{
La forma más directa de verlas es como la respuesta de las variables ante
choques que las desvian de su estado estacionario
%}

%1.SIMULACIÓN DE UN SHOCK DE TASA DE INTERÉS DE PM
clear all;
clc

% Carga de modelo y solución al workspace
readmod02;

% Datos históricos
data = databank.fromCSV('data/Octubre_2018.csv', 'Delimiter=', ';');
% desviación estándar de la tasa de interés
std_i = data.i.std;

% Definición del periodo de simulaicón
startSim = 1;
endSim = 60;

% Base de datos con estados estacionarios del modelo original (g)
g_sim = zerodb(g, startSim-4:endSim);
g_sim.s_i(startSim) = std_i;

% Impulso respuesta
g1_irf = simulate(g, g_sim, startSim:endSim, 'deviation', true, 'Anticipate=', false);
g1_irf = dbextend(g_sim, g1_irf);


%% 2. GRÁFICAS
plotrng = startSim-4:endSim;

% figure
%Estas dos lineas son para obtener la imagen maximizada, pueden dar error
%en Octave
% sz = get(0,'ScreenSize');
% figure('position',[sz(1) sz(2) sz(3) sz(4)]);

list = {'i', 'v_cpi', 'v_y', 'v_z','E_v_cpi',...
        'v_s','E_v_s','prem', 'r',...
        'v_cpi_star', 'v_y_star','i_star'};

set(gcf, 'defaultaxesfontname', 'times', 'defaultaxesfontsize',9);
   
for j=1:length(list)
    subplot(4,3,j);   
    plot(plotrng, g1_irf.(list{j}), '.-b');
    grid on;
    title(list{j}, 'interpreter', 'none');
    ylabel('Variación porcentual', 'Fontsize', 9);
    xlabel('Período de tiempo', 'Fontsize', 9);
end