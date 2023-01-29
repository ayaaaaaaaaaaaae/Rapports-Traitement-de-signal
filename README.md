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

## TP1

 Analyse spectrale d’un signal /Transformée de Fourier discrète
  
 -------------------------Représentation temporelle et fréquentielle-----------------
 



![image](https://user-images.githubusercontent.com/121400754/215294843-b48a8901-c3ea-432c-b514-e716cc25ebd7.png)

  on obtient 5000 échantillons

----------------------------Representation du spectre du signal x et  Transformé de Fourier-------------------

![image](https://user-images.githubusercontent.com/121400754/215294932-6f1b9703-346d-47e9-b95a-21c4afd121a4.png)
Pout faire la représentation frequentielle on applique la transformé de fourier discrète on utilisant la commande fft(x) ,le pas de discritisation dans le domaine fréquentiel est de  fe/N, on va donc obtenir 6 piques  car la transformée de fourier représente la symétrique conjugué

![image](https://user-images.githubusercontent.com/121400754/215295183-3e72c31d-a049-439a-97be-01c9deca03c1.png)
pour une meilleure visualisation on utilse fftshift qui  effectue un décalage circulaire centré sur zéro du spectre en amplitude obtenu par la commande fft.


Un bruit correspond à tout phénomène perturbateur gênant la transmission ou l'interprétation d'un signal. Dans les applications scientifiques, les signaux sont souvent corrompus par du bruit aléatoire, modifiant ainsi leurs composantes fréquentielles. La TFD peut traiter le bruit aléatoire et révéler les fréquences qui y correspond.
![image](https://user-images.githubusercontent.com/121400754/215295259-97734a52-d9cc-4282-8894-897f0a8ef073.png)

------------------------------Un nouveau signal xnoise  en introduisant un bruit blanc gaussien ----------------

![image](https://user-images.githubusercontent.com/121400754/215295364-8c69e3e5-ac21-449c-a68f-a7e7aa80635a.png)
 
-----------------------------Commande sound pour écouter le signal et puis le signal bruité-----------------------

![image](https://user-images.githubusercontent.com/121400754/215296830-746df45d-24da-4add-ac34-5ac0a2601342.png)

-------------------Filtrage Ideal------------------------
filtre passe bas

![image](https://user-images.githubusercontent.com/121400754/215299305-6af6a9b1-3668-4693-91a5-b5b32d56c5bd.png)

------application du filtre passe bas------------

![image](https://user-images.githubusercontent.com/121400754/215299376-b2a7227f-9791-4491-b19f-dd9b53080437.png)
 


-------------------Analyse fréquentielle du chant du rorqual bleu------------------------------

![image](https://user-images.githubusercontent.com/121400754/215299973-a08943f8-3c52-4b49-a7f8-9f74b4c0f280.png)


---------------------densite spectrale du chant -----------------------

![image](https://user-images.githubusercontent.com/121400754/215300101-6f5877ad-b4c9-4e90-91af-f7cd99fac781.png)

----------------densite spectrale du chant 2-------------------------

![image](https://user-images.githubusercontent.com/121400754/215299920-4112973f-6f6e-413e-9bde-333310543712.png)











