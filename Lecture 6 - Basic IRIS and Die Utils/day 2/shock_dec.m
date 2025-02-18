%% Descomposición de shocks
close all;
clear;
% Carga de modelo y solución en el Workspace de Matlab u Octave
readmod02;

% Datos históricos
data = databank.fromCSV('data/Octubre_2018.csv', 'Delimiter=', ';');

% Asignación de datos para variables en ecuaciones de medida
ylist = get(g,'ylist');                                         
ylist_obs = cellfun(@(x) regexp(x, '(?<=m_)(\S*)$', 'tokens', 'once'), ...
    ylist);

for i = 1:length(ylist)
    O.(ylist{i}) = data.(ylist_obs{i});
end

data = O;

% filtro de kalman
% Definición de Períodos iniciales y finales del filtro.
histStart = qq(2006,1);
histEnd = qq(2018,3);

[gf,F] = filter( ...
    g, ...
    data, ...
    histStart:histEnd, ...
    'meanOnly=', true...
);

% Pronosticos libres (tambien aplica para los condicionales)
startSim = histEnd + 1;
endSim = startSim + 29;

g1_sim = simulate(g, F, startSim:endSim,...
            'Anticipate=', false,...
            'DbOverlay=', true);
        
% Descomposición de choques
SHD = simulate(gf, g1_sim, histStart:endSim, ...
    'anticipate',false, ...
    'contributions',true);

%% gráficas

% Lista de shocks
listSHK = get(gf, 'elist');

% Colores para barras
col = SimTools.from_stack_exchange.distinguishable_colors(length(listSHK) + 1, ...
    'b', ...
    @(x) SimTools.from_stack_exchange.colorspace('RGB->Lab',x));

list = {'i', 'v_cpi', 'v_y', 'v_z','E_v_cpi',...
        'v_s','E_v_s','prem', 'r',...
        'v_cpi_star', 'v_y_star','i_star' };

savedir = fullfile(pwd(), 'shock decomposition');

for i = 1:length(list)
    figure('Position', [1 42.0182 1.6756e+03 825.6000]);
    hold on
    % Barras
    barcon(real(SHD.(list{i}){:, 1:end-2}{histStart:endSim}), ...
        'dateFormat=','YYFP', ...
        'colorMap=',col, ...
        'evenlySpread=', false);
    % Líneas
    plot(g1_sim.(list{i}){histStart:endSim}- SHD.(list{i}){:, end-1:end-1}{histStart:endSim},'w','LineWidth',5)
    plot(g1_sim.(list{i}){histStart:endSim}- SHD.(list{i}){:, end-1:end-1}{histStart:endSim},'k.-','LineWidth',2, 'MarkerSize', 20)
    % Título
    set(gca,'FontSize',12);
    title({list{i}}, 'Interpreter', 'none');
    %     % Leyendas
    legend(listSHK(1:end),'location','northeastoutside','FontSize',11, 'Interpreter', 'none')
    grid on;
    
    saveas(gcf, ...
        fullfile(savedir, ...
        sprintf('%s.png', list{i}))...
        );
   close all  
end


