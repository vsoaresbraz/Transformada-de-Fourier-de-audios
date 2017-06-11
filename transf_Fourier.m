%% Parte 1: Limpando o workspace e ajustando os parametros para o plot do espectro
opengl software;    
clear;clc;

N=10000;            %numero de amostras
T=3;                %tempo do intervalo
t=(0:N-1)/N;        %vetor tempo em segundos
t=t*T;              %tempo em segundos

%% Parte 2: Escolhendo o sinal a ser plotado e fazendo os ajustes necessarios
x=audioread('Letra I.wav'); %vogal escolhida           

X=abs(fft(x)/(N/2));        %escolhendo somente a parte real da funçao
X=X(1:N/2).^2;              %pegando somente a parte positiva da transf.
f=(0:N/2-1)/T;
%% Parte 3: Plotando o espectro e setando as legendas e titulo
figure;
plot(x);
ylabel('Amplitude');
xlabel('Tempo');
title('Audio da letra I');
grid;
figure;
plot(f,X);
ylabel('Energia');
xlabel('Frequência');
title('Transformada de Fourier');
axis([0 600 0 1.5]);   
grid;
