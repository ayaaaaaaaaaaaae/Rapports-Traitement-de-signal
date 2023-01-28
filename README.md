# Rapports-Traitement-de-signal 
## TP4

FILTRAGE ET DIAGRAMME DE BODE


-------------------TRACEE DU SIGNAL ET DE SA FFT AVEC TE=0.0001 ET TE= 0.0005-----------------
![image](https://user-images.githubusercontent.com/121400754/215266735-cd21acdb-0b7a-405b-bb58-098ec3d92fa6.png)
En observant la Transformée de Fourier on peut remarquer que les fréquences fondamentales ont des amplitudes différentes, 
et des harmoniques qui ont des amplitudes plus faibles.
on peut donc conclure que plus on augmente la valeur de Te, plus on perd d'information sur le signal

-------------------------------TRACE DU MODULE H(F)------------------------------------
![image](https://user-images.githubusercontent.com/121400754/215266788-0913609f-3aab-4cfd-98a3-69fa1ca03274.png)

En tracant 20.log(|H(f)|) pour différentes pulsations de coupure wc,  on observe qu'à mesure que la fréquence de coupure augmente, 
la transmittance du filtre augmente également.

----------------------------TRANSMITTANCE COMPLEXE------------------------------------------
![image](https://user-images.githubusercontent.com/121400754/215268134-c0fb91e6-9661-47f9-baaa-6523b2b10ab7.png)


-------------------------SPECTRE DE PHASE APRES FILTRAGE------------------------------------------
![image](https://user-images.githubusercontent.com/121400754/215268752-9ed8fe80-fec0-470d-bd40-1da6049bc5bb.png)
On peut remarquer une attenuation importante au niveau des basses frequences, les filtres analogique sont moin efficaces que les filtres reel ce qui entraine une attenuation et non une annulation au niveau des basse frequences.






