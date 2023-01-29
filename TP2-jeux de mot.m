clear all
close all
clc
[x,fs]= audioread("rienouj.au"); 
sound(x,fs);
N=length(x);
ts = 1/fs; 
t = (0:N-1)*ts; 
%le son et son signal 
sound(x,fs);
subplot(1,2,1)
plot(t,x);
legend("Representation du signal du son");
xlabel("t");
ylabel("x(t)");
    
%Ecoutez la phrase en modifiant la fréquence dqéchantillonnage qui  va
%rendre le son grave ou aigus
    sound(x,1/8*fs);
    sound(x,2*fs);
    
%spectre du signal
y=fft(x);
dsp_chant =  (abs(fft(x)).^2)/N;
f = (0:floor(N/2))*(fs/N)/2;
plot(f,dsp_chant(1:floor(N/2)+1))
legend("Representation du signal du son");
xlabel("Fréquence (Hz)");
ylabel("Densité spectrale en puissance");
