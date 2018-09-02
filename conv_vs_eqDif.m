% Autor: CARLOS ALEXANDRE ROLIM FERNANDES
% Revisado por: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
%
% Script para exemplificar diferença entre Convolução e Equação de
% Diferenças

clear
clc
close

% EXEMPLO 1

% % Resposta ao impulso igual à função exponencial (truncada)
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
% % Sinal de saída usando a convoluçao
% y = conv(h,x); %Sainda covolvendo resposta o impulso e sinal de entrada
% figure,plot(y) %Plota a saida obtida por convolução
% title('Convolução vs Eq. de Diferenças');
% %xlabel('amostras');
% ylabel('Amplitude');
% 
% % Sinal de saída usando a equaçao de diferenças (função degrau unitário)
% %y[n] - y[n-1]/2 = x[n]
% B = 1; %Coeficientes do sinal x
% A = [1 -1/2]; %Coeficientes do sinal y
% y2 = filter(B,A,x); %Obtenção da saida por equação de diferenças
% hold on,plot(y2,'r') %Plota a saida obtida por Eq. de diferenças
% legend('Convolução','Eq. de Diferenças');
% EXEMPLO 2

% Resposta ao impulso igual à função degrau unitário (truncada)
M = 50; %Numero de pontos
h = zeros(M,1); 
h(M/2+1:end,1) = ones(M/2,1); %Resposta ao Impulso
figure,plot(h) %Plota a resposta ao impulso

% Sinal de entrada 
x = ones(1000,1); %Sinal de entrada
figure,plot(x) %plota o sinal de entrada

% Sinal de saída usando a convoluçao
y = conv(h,x); %Saida obtida por convolução
figure,plot(y) %plota a saida opbtida por convolução

% Sinal de saída usando a equaçao de diferenças (função degrau unitário)
%y[n] - y[n-1] = x[n]
B = 1; %Coeficientes de x
A = [1 -1]; %Coeficientes de y
y2 = filter(B,A,x); %Saida obtida por equação de diferencas
hold on,plot(y2,'r') %plota a saida obtida por equação de diferencas