%% Parametros Modelo 2
%{
 En este c�digo se definen los par�metros para asignarse al modelo 2
 (mod_02.mod).

 En la primera secci�n se definen los par�metros de las ecuaciones y en la
 segunda secci�n los estados estacionarios de las variables del modelo.
%}

%% Par�metros Ecuaciones 
% Ecuaci�n 1 - Crecimiento Econ�mico Interno
p.A1  = 0.95;
p.A2  = 0.15;
p.A3  = 0.75;
p.A4  = 0.75;
% Ecuaci�n 2 - Curva de Phillips
p.B1  = 0.15;
p.B2  = 0.10;
p.B3  = 0.30;
% Ecuaci�n 3 - Expectativas inflacionarias
p.B4  = 0.15;
% Ecuaci�n 4 - Regla de Taylor
p.C1  = 0.90;
p.C2  = 1.50;
p.C3  = 0.50;
% Ecuaci�n 7 - Tipo de Cambio Nominal
p.D1  = 0.20;
p.D2  = 0.40;
% Ecuaci�n 8 - Prima por riesgo
p.D3  = 0.80;
% Ecuaciones 10 a 12 - Variables externas
p.Z1  = 0.75; % Ecuaci�n 10 - Inflaci�n 
p.Z2  = 0.75; % Ecuaci�n 11 - Tasa de inter�s
p.Z3  = 0.75; % Ecuaci�n 12 - Crecimiento econ�mico

%% Estados Estacionarios %(10 parametros calibrados) 
%%% Variables Internas %%%
% Crecimiento Econ�mico
p.v_y_ss         =  3.5;
% Inflaci�n Interna
p.v_cpi_ss       =  4.0;
% Tasa de inter�s de PM
p.i_ss           = 5.0;
% Tasa de inter�s real
p.r_ss           =  0.0;
% Tipo de Cambio Nominal
p.v_s_ss         =  0.0;
% Tipo de Cambio Real
p.v_z_ss         = -2.0;
% Prima por riesgo
p.prem_ss        =  1.0;
%%% VARIABLES EXTERNAS %%%
% Inflaci�n Externa
p.v_cpi_star_ss  =  2.0;
% Tasa de inter�s externa
p.i_star_ss      =  3.0;
% Crecimiento Externo
p.v_y_star_ss    =  2.5;

