clear all 
close all
clc
%realiser par Aya Alaoui sosse

fe = 8192;
te = 1/fe;
t = [0:te:0.5];
Do = sin(2*pi*t*261.62);
Dod = sin(2*pi*t*277.18);
Re = sin(2*pi*t*293.66);
Red = sin(2*pi*t*311.12);
Mi = sin(2*pi*t*329.62);
Fa = sin(2*pi*t*349.22);
Fad = sin(2*pi*t*370);5
Sol = sin(2*pi*t*392);
Sold = sin(2*pi*t*415.30);
La = sin(2*pi*t*440);
Lad = sin(2*pi*t*466.16);
Si = sin(2*pi*t*494.88);
Do2 = sin(2*pi*t*523.25);
doremifasol_solfamiredo= [Do,Re,Mi,Fa,Sol,La,Si,Do2,Do2,Si,La,Sol,Fa,Mi,Re,Do];
Gamme=[Do,Re,Mi,Fa,Sol,La,Si,Do2];
sound(doremifasol_solfamiredo,fe);
signalAnalyzer(Gamme); %visualiser le spectre de notre Gamme musicale
spectrogram(Gamme)% pour visualiser le contenu fréquentiel du
signal au cours du temps
a = length(Gamme);
fshift = (-a/2:(a/2)-1)*(fe/a);
y = fft(Gamme);

subplot(2,1,1)
plot(fshift,fftshift(abs(y)));
legend("Represenation du spectre d'une Octave");
xlabel("f");
ylabel("A");
subplot(2,1,2)
sig = 20*log(fftshift(abs(y)));

plot(fshift,sig);
legend("Represenation du spectre d'une Octave en dB");
xlabel("f");
ylabel("A");
