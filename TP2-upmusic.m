clear all 
close all
clc
%realiser par Aya Alaoui Sosse

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
upM = [Fa,La,Fa,Mi,Mi,Mi,Fa,La,Mi,Re,Re,Re,Fa,Re,Do,Do,Do,Re,La,Sol,Re,La,Sol,Fa,Mi,Re,Re,Re,Fa,Sol,Fa,Mi,Mi,Mi,La,Mi,Do,Mi,Do,Si,La,Si,Do,Re,Mi,Re,];
sound(upM ,fe)
