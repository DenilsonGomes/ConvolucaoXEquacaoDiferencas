% Autor: CARLOS ALEXANDRE ROLIM FERNANDES
% Revisado por: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computa��o
%
% Script para exemplificar diferen�a entre Convolu��o e Equa��o de
% Diferen�as

clear
clc
close

% EXEMPLO 1

% % Resposta ao impulso igual � fun��o exponencial (truncada)
% M = 50; %Numero de pontos
% h = 0.5.^(0:M); %Resposta ao Impulso - Exponencial decrescente
% figure,stem(h,'.') %Plota a Resposta ao Impulso
% title('Resposta ao Impulso'); 
% xlabel('amostras');
% ylabel('Amplitude');
% 
% % Sinal de entrada 
% n = 0:100; %Numero de pontos
% x = cos(n*pi/8); %Sinal entrada
% % x = ones(600,1); %Sinal de entrada
% figure,plot(x) %Plota o sinal
% title('Sinal de entrada');
% %xlabel('amostras');
% ylabel('Amplitude');
% 
% % Sinal de sa�da usando a convolu�ao
% y = conv(h,x); %Sainda covolvendo resposta o impulso e sinal de entrada
% figure,plot(y) %Plota a saida obtida por convolu��o
% title('Convolu��o vs Eq. de Diferen�as');
% %xlabel('amostras');
% ylabel('Amplitude');
% 
% % Sinal de sa�da usando a equa�ao de diferen�as (fun��o degrau unit�rio)
% %y[n] - y[n-1]/2 = x[n]
% B = 1; %Coeficientes do sinal x
% A = [1 -1/2]; %Coeficientes do sinal y
% y2 = filter(B,A,x); %Obten��o da saida por equa��o de diferen�as
% hold on,plot(y2,'r') %Plota a saida obtida por Eq. de diferen�as
% legend('Convolu��o','Eq. de Diferen�as');
% EXEMPLO 2

% Resposta ao impulso igual � fun��o degrau unit�rio (truncada)
M = 50; %Numero de pontos
h = zeros(M,1); 
h(M/2+1:end,1) = ones(M/2,1); %Resposta ao Impulso
figure,plot(h) %Plota a resposta ao impulso

% Sinal de entrada 
x = ones(1000,1); %Sinal de entrada
figure,plot(x) %plota o sinal de entrada

% Sinal de sa�da usando a convolu�ao
y = conv(h,x); %Saida obtida por convolu��o
figure,plot(y) %plota a saida opbtida por convolu��o

% Sinal de sa�da usando a equa�ao de diferen�as (fun��o degrau unit�rio)
%y[n] - y[n-1] = x[n]
B = 1; %Coeficientes de x
A = [1 -1]; %Coeficientes de y
y2 = filter(B,A,x); %Saida obtida por equa��o de diferencas
hold on,plot(y2,'r') %plota a saida obtida por equa��o de diferencas