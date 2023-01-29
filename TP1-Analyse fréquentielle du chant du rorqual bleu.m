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
t = (0:taille-1)*(10*ts);
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
