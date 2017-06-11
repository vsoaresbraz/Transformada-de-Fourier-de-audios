%% Parte 1: Limpando o workspace e ajustando os parametros para o plot
%do espectro
opengl software;    
clear;
clc;
N=10000;            %numero de amostras
T=3;                %tempo do intervalo
t=(0:N-1)/N;        %vetor tempo em segundos
t=t*T;              %tempo em segundos
w1=2*pi*30;
w2=2*pi*20;

%% Parte 2: Escolhendo o sina a ser plotado e fazendo os ajustes necessarios
x1=sin(w1*t);               %sinais escolhidos para fazer a transformada
x2=cos(w2*t);
x=x1+x2;               
X=abs(fft(x)/(N/2));        %escolhendo somente a parte real da funçao
X=X(1:N/2).^2;              %pegando somente a parte positiva da transf.
f=(0:N/2-1)/T;

%% Parte 3: Plotando o espectro e setando as legendas e titulo
figure;
plot(t,x);
ylabel('Amplitude');
xlabel('Tempo');
title('Função Seno + Cosseno');
axis([0.015 4/10+0.015 -2 2]);
grid;
figure;
plot(f,X);
ylabel('Energia');
xlabel('Frequência');
title('Transformada de Fourier');
axis([10 40 0 1.1]);   
grid;