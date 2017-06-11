%% Parte 1: Limpando o workspace e ajustando os parametros para o plot
%do espectro
opengl software;    
clear;
clc;

N=10000;            %numero de amostras
T=3;                %tempo do intervalo em segundos
t=(0:N-1)/N;        %vetor tempo em segundos
t=t*T;              %tempo em segundos
f=300;              %frequencia do sinal em hertz
w=2*pi*f;           %frequencia em rads

%% Parte 2: Escolhendo o sina a ser plotado e fazendo os ajustes necessarios
x=sin(w*t);               %senoide escolhida como o sinal
p=abs(fft(x)/(N/2));      %definindo somente valores reais
p= p(1:N/2).^2;           %definindo somente valores positivos
f=(0:N/2-1)/T;            %vetor de frequencias

%% Parte 3: Plotando o espectro e setando as legendas e titulo
%figure;
%plot(t,x);
%ylabel('Amplitude');
%xlabel('Tempo');
%title('Função Seno');
%axis([0 5/100 -1 1]);
%grid;
%figure;
plot(f,p);
ylabel('Energia');
xlabel('Frequência');
title('Transformada de Fourier');
%axis([80 120 0 1]);
grid;