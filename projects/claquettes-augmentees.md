---
layout: page
title:  "Claquettes augmentées"
categories: [ fr ]
tags: [ makey makey, javascript, programming, nodejs, music ]
---

#### Expérimentation à partir de la captation du rythme généré par une claquettiste.

<iframe src="https://gfycat.com/ifr/AnchoredLeanFrillneckedlizard" frameborder="0" scrolling="no" allowfullscreen width="640" height="359"></iframe>

L'augmentation des claquettes se fait grâce à la captation du rythme produit par le jeu d'une claquettiste. **Chaque pied dispose de deux surfaces de contact** (voir ci-dessous) qui peuvent chacune déclencher une action différente. Dans cette expérimentation, chaque surface de chaque pied incrémente son propre compteur, qui déclenche au-delà d'un certain seuil un échantillon de chant enregistré par l'interprête : les syllabes **TECH** - **NO** - **LO** - **GIE** enregistrées sur 4 tons différents pour un total de 16 échantillons.

Une fois que le rythme est capté, on peut imaginer une infinité d'applications différentes en considérant les impacts comme de simples notes venant d'un instrument, en MIDI par exemple. Cela ouvre la voie à l'interactivité avec par exemple d'autres instruments, voire même des jeux de lumière ou encore un [Dance Dance Revolution](https://fr.wikipedia.org/wiki/Dance_Dance_Revolution) revisité !

<iframe src="https://gfycat.com/ifr/FairFinishedDeer" frameborder="0" scrolling="no" allowfullscreen width="640" height="359"></iframe>

Côté technique, c'est **[Makey Makey](https://en.wikipedia.org/wiki/Makey_Makey)** qui s'en charge. Le tapis et les chaussures sont reliées à la carte (point à améliorer en priorité, la mobilité) et un impact ferme le circuit, déclenchant une lettre selon la surface concernée — la Makey Makey étant considérée comme un clavier par l'ordinateur.

![Makey Makey](https://i.imgur.com/zfGMSDX.jpg?1)

<span class="caption">La Makey Makey. En reliant un des pins à la terre, on déclenche une lettre, un mouvement de souris, etc.</span>

Cette lettre est ensuite récupérée par un programme **Node.js** tournant en tâche de fond, qui incrémente le bon compteur puis lance la lecture d'un échantillon le cas échéant, en réinitialisant le compteur au passage.

<iframe src="https://gfycat.com/ifr/DeficientJointChick" frameborder="0" scrolling="no" allowfullscreen width="640" height="357"></iframe>

**Le résultat en conditions normales était stable**, peu d'interférences ou de faux-positifs et validait donc avec succès une première étape dans l'augmentation de la pratique des claquettes !

<small>*Réalisé avec Clément B. et Sarah dans le cadre de l'atelier "Live Contact / Sur le Corps" organisé par l'ADAMI. Extraits vidéo : [Adami CED // Atelier créatif - 29/11/2016 - Live Contact / Sur le Corps](https://vimeo.com/194544228)*</small>