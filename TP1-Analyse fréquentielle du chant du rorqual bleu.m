clear all 
close all
clc

%Realiser par Aya Alaoui Sosse

% Lire un fichier audio "bluewhale.au" et enregistrer les données dans des variables
[x,fs] = audioread("bluewhale.au");
% Extraire une portion du signal audio qui contient le chant de la rorquale bleu
chant = x(2.45e4:3.10e4);
taille = length(chant);
ts = 1/fs;
t = (0:taille-1)*(10*ts);%on multiplie par 10 pour rendre le son audible 
title ('Visualisation du chant du roquale bleu dans le domaine temporel');
xlabel(' le temps en s');
ylabel('Amplitude');
fshift = (-taille/2:taille/2-1)*(fs/taille);

Chant2 = x(2e2:4.0229e4);
Taille = length(Chant2);
T = (0:Taille-1)*(10*ts);
fshift2 = (-Taille/2:Taille/2-1)*(fs/Taille);


% Appliquer la transformation de Fourier rapide (FFT) sur la portion de signal extraite
Schant = fft(chant);
% Calculer la densité spectrale de puissance du signal
Densite_spectrale_chant = abs(Schant).^2/taille;


Schant2 = fft(Chant2);

Densite_spectrale_chant2 = abs(Schant2).^2/taille;

ubplot(2,3,1)
sound(chant,fs);
plot(t,chant);
legend("representation du signal Chant");
xlabel("t");
ylabel("chant");

subplot(2,3,2)
plot(fshift,fftshift(2*abs(Schant)/taille));

ylabel("Amplitude");


subplot(2,3,3)
f = (0:floor(taille/2))*(fs/taille)/10;
plot(f,Densite_spectrale_chant(1:floor(taille/2)+1));
legend("Densité spectrale du chant");
xlabel("Fréquence (Hz)");
ylabel("Densité spectrale en puissance");


subplot(2,3,4)
sound(Chant2,fs);
plot(T,Chant2);
legend("representation du signal Chant 2");
xlabel("t");
ylabel("chant 2");

subplot(2,3,5)
plot(fshift2,fftshift(2*abs(Schant2)/Taille));
legend("representation du spectre en Amplitude du signal Chant 2");
xlabel("Fréquence (Hz)");
ylabel("A");


subplot(2,3,6)
f = (0:floor(Taille/2))*(fs/Taille)/10;
plot(f,Densite_spectrale_chant2(1:floor(Taille/2)+1));
legend("Densité spectrale du chant 2");
xlabel("Fréquence (Hz)");
ylabel("Densité spectrale en puissance");

