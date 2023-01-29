
    clear all
close all
clc
%realiser par Aya Alaoui Sosse
%Déclaration des variables
    fe = 1e4; % Fréquence d'échantillonnage
    te = 1/fe; % Temps d'échantillonnage
    N  = 5000; % Nombre d'échantillons
    t  = (0:N-1)*te; % Echelle de temps
    x  = 1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t); 
    % Signal d'entrée, une somme de cosinus de différentes fréquences
    x1  = 1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t); 
    % Signal d'entrée sans la fréquence 2500 Hz
    f = (0:N-1)*(fe/N); % Echelle de fréquence
    y = fft(x); % Transformée de Fourrier du signal d'entrée
    fshift = (-N/2:N/2-1)*(fe/N);
    % Conception du filtre pass-bas
    fc = 2000; % Fréquence de coupure
    pass_bas = zeros(size(x)); % Initialisation du filtre
    index_fc = ceil((fc*N)/fe); % Indice correspondant à la fréquence de coupure
    pass_bas(1:index_fc) = 1; % Amplification des fréquences en dessous de la fréquence de coupure
    pass_bas(N-index_fc+1:N) = 1;
    %Application du filtre 
    x_filtre_freq = pass_bas .*y; % Multiplication de la transformée de Fourrier du signal avec le filtre
    x_filtre_temp = ifft(x_filtre_freq,"symmetric"); % Transformée inverse pour retourner au domaine temporel
    % representation 
    subplot(2,3,1)
    plot(t,x,"Linewidth",1.5)
    legend("Signal d'origine")
    xlabel("t");
    ylabel("x(t)");
    
    subplot(2,3,2)
    plot(fshift,fftshift(abs(y)));
    legend("spectre du signal d'origine")
    xlabel("f");
    ylabel("A");
    
    subplot(2,3,3)
    plot(f,pass_bas,"Linewidth",1.5)
    legend("Filtre pass bas")
    xlabel("f");
    ylabel("Filtre");
    subplot(2,3,4)
    plot(t,x_filtre_temp);
    xlabel("t");
    ylabel("Signal x filtrer ");
    legend(" signal filtrer")
    
    subplot(2,3,

    subplot(2,3,6)
    plot(t,x1-x_filtre_temp);
    legend("la différence entre le signal filtre et le signal sans le cosinus de frequence 2500");
    xlabel("t");
    ylabel("différence");
