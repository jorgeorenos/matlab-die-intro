%% Parametros Modelo 2
%{
 En este código se definen los parámetros para asignarse al modelo 2
 (mod_02.mod).

 En la primera sección se definen los parámetros de las ecuaciones y en la
 segunda sección los estados estacionarios de las variables del modelo.
%}

%% Parámetros Ecuaciones 
% Ecuación 1 - Crecimiento Económico Interno
p.A1  = 0.95;
p.A2  = 0.15;
p.A3  = 0.75;
p.A4  = 0.75;
% Ecuación 2 - Curva de Phillips
p.B1  = 0.15;
p.B2  = 0.10;
p.B3  = 0.30;
% Ecuación 3 - Expectativas inflacionarias
p.B4  = 0.15;
% Ecuación 4 - Regla de Taylor
p.C1  = 0.90;
p.C2  = 1.50;
p.C3  = 0.50;
% Ecuación 7 - Tipo de Cambio Nominal
p.D1  = 0.20;
p.D2  = 0.40;
% Ecuación 8 - Prima por riesgo
p.D3  = 0.80;
% Ecuaciones 10 a 12 - Variables externas
p.Z1  = 0.75; % Ecuación 10 - Inflación 
p.Z2  = 0.75; % Ecuación 11 - Tasa de interés
p.Z3  = 0.75; % Ecuación 12 - Crecimiento económico

%% Estados Estacionarios %(10 parametros calibrados) 
%%% Variables Internas %%%
% Crecimiento Económico
p.v_y_ss         =  3.5;
% Inflación Interna
p.v_cpi_ss       =  4.0;
% Tasa de interés de PM
p.i_ss           = 5.0;
% Tasa de interés real
p.r_ss           =  0.0;
% Tipo de Cambio Nominal
p.v_s_ss         =  0.0;
% Tipo de Cambio Real
p.v_z_ss         = -2.0;
% Prima por riesgo
p.prem_ss        =  1.0;
%%% VARIABLES EXTERNAS %%%
% Inflación Externa
p.v_cpi_star_ss  =  2.0;
% Tasa de interés externa
p.i_star_ss      =  3.0;
% Crecimiento Externo
p.v_y_star_ss    =  2.5;

