---
layout: post
title:  "Treasure hunt music collaboration"
description: "A long-distance music collaboration involving mystery, old tapes, pirate radio and calls to an unknown phone number."
date:   2017-04-26 18:07:51 +0200
categories: [ en ]
tags: [ music, hardware ]
---

## **TL;DR**

You can listen to this ping-pong, but the point is in the realisation so **I encourage you to read how it's made** (the links make you jump to the desired section below).

[**Batch #1**](#batch1) (him)
<br><audio src="/assets/audio/batch1.mp3" controls=""></audio><br>
[**Batch #2**](#batch2) (me)
<br><audio src="/assets/audio/batch2.mp3" controls=""></audio><br>
[**Batch #3**](#batch3) (him)
<br><audio src="/assets/audio/batch3.mp3" controls=""></audio><br>
[**Batch #4**](#batch4) (me)
<br><audio src="/assets/audio/batch4.mp3" controls=""></audio><br>

---

I have a long-time friend now living 500 kilometers away from me, with whom I share similar music tastes. He recently got into making music with analog gear (cassettes recorders and stuff) and I recently switched from a "computer music station" to a full-analog setup in which the MPC1000 takes the main role, making music as a hobbie for almost 10 years now.

**This post is a summary of a music collaboration my friend and I are doing. In the web era and easier-than-ever digital collaboration, our not-so-much guideline is to use different supports to record and/or play the successive versions we send each other.** In other words, to make it complicated, like a treasure hunt. To create a story, an atmosphere this whole collab. The real guideline is just to have fun making it :)

<!--more-->

---
<a name="batch1" id="batch1">
# Batch #1 (him)

![A looped cassette](https://i.imgur.com/heyKiqa.jpg?2)

This is what I received in the mailbox: the first piece of music to begin our collab. It's a **looped cassette**. It plays like a usual cassette but never ends, because both ends of the tape are glued together. [Here is a tutorial on how to make one](http://www.instructables.com/id/Audio-Cassette-Loop).

Here is the extract (**WARNING, the level is loud!**), played with a cassette walkman

<audio src="/assets/audio/batch1.mp3" controls=""></audio>

---
<a name="batch2" id="batch2"></a>
# Batch #2 (me)

I loaded the extract in my MPC1000 and worked the loop with a bit of delay from the Boss RE-20

<audio src="/assets/audio/batch2.mp3" controls=""></audio>

Then I sent my friend a rather mysterious message...

![A morse code](https://i.imgur.com/FntB669.jpg?1)

That's morse code printed on a white sheet, on which I dropped some coffee and burned the edges. It translates to an URL on which I uploaded the following bare web page.

![The webpage from the morse code](https://i.imgur.com/1Fkok28.png?1)

Clicking on the image would play the audio in a loop.

---
<a name="batch3" id="batch3"></a>
# Batch #3 (him)

I received a big enveloppe containing what seemed to be an army file with several sheets about a fighter pilot and diverse missions he has done during WWII.

![The army file](https://i.imgur.com/EOCkC0Z.jpg?1)

On one of the sheets I could read the following

> It's on April 25th 1994 that the incident occurred. During the exercise, an UFO entered the flight zone and seemed to follow us at reasonable distance. [...] It looked like an observation approach rather than a fighting approach. Jacques M. plane didn't follow the usual procedure, the radio link with him was impossible. The UFO was chased by Jacques M. and taken down at 5.52PM. Once back to the ground, Jacques M. behaviour became very strange. He seemed to not recover from recent events, he was in a kind of traumatic amnesia. He kept repeating during 2 minutes the following number : 05459092XX

As you can see, I redacted the last digits. It's a phone number, that I indeed called. It rang, and a voicemail began to transmit was I expected, the third batch he made !

<audio src="/assets/audio/batch3.mp3" controls=""></audio>

---
<a name="batch4" id="batch4"></a>
# Batch #4 (me)

The idea was to transmit the track over the air, on the FM band. I quickly looked if it was possible, and I found this wonderful software: [PiFM](https://github.com/rm-hull/pifm). It allows you to do exactly that, with a single wire as the antenna. I never thought this was possible! **Please note that it is illegal to emit on the FM band without authorization in most countries.**

<br>

<a href="https://imgur.com/a/xPHcy" title="Some other pictures of the pirate radio"><img src="https://i.imgur.com/g1HGtd2.jpg?2" alt="Pirate radio" style="width: 45%;"></a> <a href="https://imgur.com/a/xPHcy" title="Some other pictures of the pirate radio"><img src="https://i.imgur.com/f0JVrJn.jpg" alt="Pirate radio" style="width: 45%;"></a>

The challenge for my friend was first to figure out this little black box was a radio, then to find the frequency it emitted on.
I spent a lot of time on this, mostly for building the battery circuit with the [LiPoPi tutorial](https://github.com/NeonHorizon/lipopi/blob/master/README.power_up_power_down.md) and building the **cardboard** case: it's 3mm thick black cardboard (foam-coardboard as translated from french, not regular cardboard) with Meccano pieces to both harden it and give it this badass look-and-feel. Two LEDs for indicating the power and broadcasting status, a switch, et voilà!

<br>
<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/adMJqoLPGqg?rel=0" frameborder="0" allowfullscreen=""></iframe>
<br>

Finally, here is my version of the collab the radio was transmitting

<audio src="/assets/audio/batch4.mp3" controls=""></audio>

---

<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/aWm2K3FGO4E" frameborder="0" allowfullscreen=""></iframe>
<span class="caption">The radio played by my friend</span>

---

# Exhibition

We had the chance to present our work (up to the fourth batch) to the [Instr/humains](https://www.facebook.com/events/763474350490080) exhibition in Paris, hosted by the art collective [La Main](https://www.lamaincollectif.fr/). Thanks to them!

<img src="https://i.imgur.com/6qIiFPV.jpg?1" alt="Exhibition display">

---

I will keep this thread updated with the further batches. See you soon!