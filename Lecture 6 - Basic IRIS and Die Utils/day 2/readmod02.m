% Carga del modelo en el workspace de Matlab (Octave)
clear;
% Carga de parámetros para mod_02.mod
setpar02;
% Creación del objeto "model" en el workspace, asignación de parámetros y solución
g = model('model_02.mod', 'assign', p);
g = sstate(g,'growth=',true,'MaxFunEvals',1000,'display=','off');
[flag,discrep,eqtn] = chksstate(g);


if flag
    disp(" ")
else
    warning("El estado estacionario calculado discrepa del impuesto.")
end

g = solve(g,'error=',true);

%%
% Lista de variables del modelo
get(g,'xlist')
% lista de shocks del modelo
get(g,'elist')



%%
SsLevel = table(g, "SteadyLevel");
SsDiff = table(g, "SteadyDiff");
