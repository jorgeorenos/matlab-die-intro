%% MODELO 2
%{
 Elaborado por Dr. Carlos Castillo
 Licenciatura en Econom�a Empresarial
 Teor�a y Pol�tica Monetaria
 
 Variables del modelo:
 ECONOM�A INTERNA
 - v_y: Crecimiento Econ�mico Interno
 - v_cpi: Inflaci�n Interna
 - E_v_cpi: Expectativas inflacionarias
 - i: Tasa de inter�s de Pol�tica Monetaria
 - r: Tasa de inter�s real
 - prem: prima por riesgo
 - v_s: Tipo de cambio nominal
 - E_v_s: Expectativas cambiarias
 - v_z: Tipo de cambio real
 RESTO DEL MUNDO
 - v_cpi_star: Inflaci�n externa
 - i_star: Tasa de inter�s externa
 - v_y_star: crecimiento econ�mico externo

Las variables y ecuaciones se declaran en 4 bloques principales
 - Transition Variables (declaraci�n de variables a utilizar)
 - Transition Shocks (Shocks estocasticos a utilizar)
 - Par�meters (Par�metros de las ecuaciones)
 - Transition Equations (Ecuaciones del modelo)
%}

%% 1. DECLARACI�N DE VARIABLES
!transition_variables
%Variables del modelo (12 variables)
%Econom�a interna (9 variables)
v_y
v_cpi, E_v_cpi,  
i, r, prem,  
v_s, E_v_s, v_z 

%Resto del mundo(3 variables)
v_cpi_star, i_star, v_y_star 

%% 2. DECLARACI�N DE CHOQUES EX�GENOS
!transition_shocks %(10 shocks)
s_v_y, s_v_cpi, s_E_v_cpi,  
s_i, s_prem, s_v_s, 
s_E_v_s, s_v_cpi_star, 
s_i_star, s_v_y_star, s_v_z 

%% 3. DECLARACI�N DE PAR�METROS
!parameters 
% Total (17 par�metros)
% Crecimiento Econ�mico
A1, A2, A3, A4
% Curva de Phillips y Expectativas inflacionarias
B1, B2, B3, B4
% Regla de Taylor
C1, C2, C3
% Tipo de cambio nominal y prima por riesgo
D1, D2, D3
% Resto del mundo
Z1, Z2, Z3

% Estados Estacionarios (Steady state 10 parametros calibrados) 
v_y_ss, v_cpi_ss, v_z_ss
v_cpi_star_ss, i_star_ss, prem_ss
v_s_ss, v_y_star_ss
i_ss, r_ss

%% 4. DECLARACI�N DE ECUACIONES
!transition_equations

%Ecuaci�n 1% Crecimiento Econ�mico Interno
(v_y - v_y_ss) = A1*(v_y{-1} - v_y_ss) + (1-A1)*(A2*(v_z{-1}-v_z_ss) - A3*(r{-1}-r_ss) + A4*(v_y_star{-1}-v_y_star_ss)) + s_v_y; 

%Ecuaci�n 2% Curva de Phillips
(v_cpi-v_cpi_ss) = (E_v_cpi-v_cpi_ss) + B1*(v_cpi_star{-1}-v_cpi_star_ss) ...
                    + B2*(v_z{-1}-v_z_ss) + B3*(v_y - v_y_ss) + s_v_cpi; 

%Ecuaci�n 3% Expectativas Inflacionarias
(E_v_cpi-v_cpi_ss) = B4*(v_cpi{-1}-v_cpi_ss) + (1-B4)*(v_cpi{+1}-v_cpi_ss) + s_E_v_cpi; 

%Ecuaci�n 4% Regla de Taylor
(i-i_ss) = C1*(i{-1}-i_ss) + C2*(v_cpi{4}-v_cpi_ss)+C3*(v_y-v_y_ss) + s_i;

%Ecuaci�n 5% Tasa de Inter�s Real
r = i - E_v_cpi; 

%Ecuaci�n 6% Paridad no cubierta (Expectativas cambiarias)
(i - i_star) = (E_v_s - v_s) + prem + s_E_v_s; 

%Ecuaci�n 7% Tipo de Cambio nominal
(v_s-v_s_ss) = D1*(v_s{-1}-v_s_ss) - (1-D1)*(i{-1}-i_ss) - D2*(v_cpi_star-v_cpi_star_ss) + s_v_s; 

%Ecuaci�n 8% Prima por riesgo
prem = D3*prem{-1} + (1-D3)*prem_ss + s_prem;

%Ecuaci�n 9% Tipo de Cambio real
v_z = v_s + v_cpi_star - v_cpi + s_v_z;

%Ecuaci�n 10% Inflaci�n Externa
v_cpi_star = Z1*v_cpi_star{-1} +(1-Z1)*v_cpi_star_ss + s_v_cpi_star; 

%Ecuaci�n 11% Tasa de inter�s externa
i_star = Z2*i_star{-1} + (1-Z2)*i_star_ss + s_i_star;

%Ecuaci�n 12% Crecimiento Externo
v_y_star = Z3*v_y_star{-1} + (1-Z3)*v_y_star_ss + s_v_y_star;


%%%%%%%% Variables Observables %%%%%%%%%%%%%%%%
!measurement_variables
m_i,
m_r,
m_v_y,
m_v_cpi,
m_E_v_cpi,
m_v_s, 
m_E_v_s,
m_v_z,
m_prem,
m_i_star,
m_v_cpi_star,
m_v_y_star

!measurement_equations
m_i = i;
m_r = r;
m_v_y = v_y;
m_v_cpi = v_cpi;
m_E_v_cpi = E_v_cpi;
m_v_s = v_s;
m_E_v_s  = E_v_s;
m_v_z = v_z;
m_prem = prem;
m_i_star = i_star;
m_v_cpi_star = v_cpi_star;
m_v_y_star = v_y_star;