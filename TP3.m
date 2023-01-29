clear all
close all
clc
load ('ecg.mat');
fe=500;
te=1/fe;

spectre_ecg= fft(ecg);% Calcul de la transformée de Fourier de l'ECG
N=length(ecg);
t=0:te:(N-1)*te; %axe de temps
subplot(3,3,1)
plot(t,ecg);
xlabel("temps");
ylabel("amplitude");
legend("spectre d'origine")
xlim([0.5 1.5])%limite lintervalle

%% conception du filtre pass haut
pass_haut = ones(size(ecg));
fc = 0.50; % % On définit la fréquence de coupure (fc) à 0.50 Hz
indexe_fc = ceil((fc*N)/fe);
pass_haut(1:indexe_fc)=0;
pass_haut(N-indexe_fc+1:N)=0;
f=(0:N-1)*(fe/N);
%subplot(3,3,2)
%plot(f,pass_haut,'linewidth',1.2);
%% Filtrage 
spectre_ecg_filtree = pass_haut .* spectre_ecg ;% Application du filtre passe-haut sur le spectre de l'ECG
ecg1  = ifft(spectre_ecg_filtree,'symmetric');% Retour en domaine temporel pour obtenir le signal filtré
fshift=(-N/2:N/2-1)*(fe/N);
subplot(3,3,3) 
% plot(f, abs(spectre_ecg))
plot(fshift,fftshift(abs(fft(ecg1))));
legend("spectre du signal d'origine")
% plot(t,ecg1)
hold on
% plot(t, ecg+3)
hold on
% plot(t,ecg-ecg1+1.5)
%% Elimination bruit 50hz (interferance )
pass_notch_ideal = ones(size(ecg));
fc = 50; 
indexe_fc = ceil((fc*N)/fe)+1;
pass_notch_ideal(indexe_fc)=0;
pass_notch_ideal(N-indexe_fc+1)=0;
spectre_ecg2_filtree = pass_notch_ideal .* fft(tmp_ecg_filre);
tmp_ecg2_filre = ifft(spectre_ecg2_filtree,'symmetric');
subplot(3,3,4)
plot(t,ecg);
subplot(312)
plot(t,tmp_ecg2_filre);
subplot(313)
plot(t,ecg-tmp_ecg2_filre);
%% Elimination bruit hautes frequences 
pass_bas_ideal = zeros(size(ecg));
fc3 = 20; 
indexe_fc3 = ceil((fc3*N)/fe);
pass_bas_ideal(1:indexe_fc3)=1;
pass_bas_ideal(N-indexe_fc3+1:N)=1;
spectre_ecg3_filtree = pass_bas_ideal .* fft(tmp_ecg2_filre);
tmp_ecg3_filre = ifft(spectre_ecg3_filtree,'symmetric');
subplot(3,3,5)
plot(t,ecg);
subplot(312)
plot(t,tmp_ecg2_filre);
subplot(313)
plot(t,tmp_ecg3_filre);
[c,lags] = xcorr(tmp_ecg3_filre,tmp_ecg3_filre);% detecter la corelation du premier maximum local après le maximum global (à tau = 2)
stem(lags/fe,c)
%(
  Ce script effectue un filtrage sur un signal ECG enregistré dans le fichier 'ecg.mat'. 
  Le signal est tout d'abord affiché dans un premier sous-graphe. Ensuite, un filtre passe-haut est conçu et appliqué au signal ECG en utilisant la transformée de Fourier (FFT).
  Le signal filtré est affiché dans un deuxième sous-graphe.

Le bruit à 50 Hz est ensuite éliminé en utilisant un filtre passe-bande.
  Le signal filtré est affiché dans un troisième sous-graphe. Enfin, un filtre passe-bas est utilisé pour éliminer les hautes fréquences du signal.
  Le signal filtré final est affiché dans un quatrième sous-graphe et une autocorrélation du signal filtré final est affichée dans un cinquième sous-graphe.)%
  
