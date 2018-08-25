---
layout: post
title: "Build your own GTA: San Andreas radio set"
---

*Version 1, updated on Aug 22th, 2018*

By following this tutorial you'll be able to build a radio set with custom stations, in this case the *GTA: San Andreas* stations. [This is the original radio I built.]({{ site.baseurl }}{% link projects/grand-theft-auto-san-andreas-radio-set.md %})

![The GTA:SA radio](https://i.imgur.com/QhesgDH.jpg)

Also works with other games / universes as long as you have the soundtrack (*Fallout* anyone 😏 ?)

It uses [Virtual_FM_Band](https://github.com/raphaelyancey/Virtual_FM_Band) and [pyKY040](https://github.com/raphaelyancey/pyKY040), two Python programs I wrote for the occasion.

## Bill Of Materials (~$45)

- 1 * [Raspberry Pi 3](https://www.ebay.fr/itm/Raspberry-Pi-3-Model-B-Plus-1-4GHz-Quad-Core-64Bit-1GB-RAM-2018-Model/261698200759) (might work on other SBC but not tested)
- 1 * Vintage radio (at least 10.5 x 18.5 x 5.5mm — keep the speaker!)
- 1 * [Small breadboard](https://www.ebay.com/itm/5pcs-Mini-Solderless-Prototype-Breadboard-SYB-170-170-Tie-points-For-Arduino-/253218642521)
- 2 * [KY040 encoder](https://www.ebay.com/itm/2pcs-KY-040-Rotary-Encoder-Module-for-Arduino-AVR-PIC-NEW/171906808593)
- 2 * [Encoders caps](https://www.ebay.fr/itm/10Pcs-6mm-D-Shaft-Hole-Knobs-Aluminum-Potentiometer-Pot-Caps-for-Electric-Guitar/112750148954)
- 1 * [USB DAC](https://www.ebay.fr/itm/USB-2-0-Adaptateur-USB-CARTE-SON-3D-5-1-AUDIO-MICRO-CASQUE-STEREO-EXTERNAL-/292654792250?oid=153077145613)
- 1 * [PAM8403 amplifier](https://www.ebay.com/itm/5PCS-Mini-Digital-Power-Amplifier-Board-PAM8403-Class-D-2-3W/171192554169) (or equivalent depending on your radio speaker)
- 1 * [Micro-USB panel mount](https://www.ebay.fr/itm/Micro-USB-2-0-Male-to-Female-connector-Adapter-Cable-30cm-With-Panel-Mount-Hole/391957934957) (male <> female)
- 18 * [DuPont prototyping wires](https://www.ebay.fr/itm/40-PCs-Dupont-Jumper-Wire-m-m-m-f-f-f-cable-pi-pic-pain-pour-Arduino/323094330106) (male <> female)
- 1 * [Male 1/8" TRS audio jack](https://www.ebay.fr/itm/10pcs-3-5mm-1-8-Audio-Male-Plug-Jack-Adapter-Connector-DIY-Earphone-SpeakerFE/232857668261)

... and some screws, bolts, wire, multimeter, spare DuPont headers & basic soldering tools that I'm guessing you already have. Also, a glue gun will be useful.

# Hardware

## 1. Empty the radio case

- Get rid of everything **but the speaker** and the pot caps if it has any. Read any indication on the speaker to buy the amplifier accordingly.

## 2. Solder the micro-USB panel mount to the Pi

- **Strip** the male socket part of the panel mount cable
- **Solder** the **positive** (red) wire to the **PP1** pad of the Raspberry Pi
- **Solder** the **negative** (black) wire to the **top of the socket** directly (the socket is grounded, and this way we avoid messing too much with the board if we want to re-use for another project)
- Put a little bit of **glue** on top of the socket solder to be sure the wire won't move

![PP1 pad on the Raspberry Pi](https://i.imgur.com/VvuUuPV.jpg)

![Grounded socket](https://i.imgur.com/UWCdr9y.jpg)

## 3. Build the speaker assembly

- **Cut** and **strip** five small length wires: two for *amp <> speaker* and three for *Pi <> amp*

- Amplifier
  - **Solder** a 2-pins male DuPont header (bended, if you have) to the **amplifier 5V input**
  - **Connect two male <> female DuPont wires** to it and make it sturdy with electrical tape or thermo-retractable sheath

- Audio jack
  - Get the **audio jack** out of its plastic housing (we won't use it — just keep the metallic part)
  - With the optional help of a multimeter, locate the *tip* (left audio channel), *ring* (right audio channel) and *sleeve* (ground) parts of the audio jack ([schema](https://robrobinette.com/images/Audio/TRS_Pinout_4_Wire.jpg))
  - **Solder wires** to each part
  - **Isolate it** and make it sturdy with electrical tape or sheath. You can use the plastic housing if you have space in your case.

- Speaker
  - **Solder** two wires to the speaker positive and negative poles

- Assembly
  - **Solder** the wire coming from the speaker **positive** pole to the amplifier **OUT L+** hole
  - **Solder** the wire coming from the speaker **negative** pole to the amplifier **OUT L-** hole (it could've been R+ and R- since the audio output will be mono, meaning both the left and right channel will output the same signal)
  - **Solder** the wire coming from the audio jack **tip** (left) to the amplifier **L** hole
  - **Solder** the wire coming from the audio jack **ring** (right) to the amplifier **R** hole
  - **Solder** the wire coming from the audio jack **sleeve** (ground) to the amplifier **⏚** (ground) hole

**You now have the full speaker assembly** with an audio jack and two female DuPont wires ready to be plugged.

## 4. Prepare the case

Here, **it will all depend on the shape of your radio case**. Just make sure you have enough space for the whole stuff by trying different layouts. When you think you're ready, then...

- **Drill** two holes for the encoders
- **Drill or cut** a rectangular hole for the micro-USB panel mount and two more aside it to screw it to the case

**Optional but very useful:** cut a hole for accessing the Pi micro-SD card without having to open the case.

## 5. Position the encoders, the Pi and the breadboard

- **Install the encoders** in their holes and screw the bolts
- If you can, **screw the Pi to the case** so it won't move. Else, find some magic trick in your maker head!
- **Stick the breadboard** to the case
- Remove the **USB DAC** plastic case to gain some space, and plug it into the Pi

**At this point**, you shouldn't any moving parts in the radio case except the speaker assembly: everything is either screwed or glued to the case.

## 6. Wire everything

- Follow the following wiring schema for all the DuPont wirings involving the **breadboard**

- Plug the **audio jack** into the **USB DAC**

# Software
## Flash Raspbian to a SD card
## Install Virtual_FM_Band
## Install pyKY040
## Prepare your soundtrack files
## Make it run on boot