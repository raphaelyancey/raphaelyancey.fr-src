---
layout: post
title: "Build your own GTA: San Andreas radio set"
---

By following this tutorial you'll be able to build a radio set with custom stations, in this case the *GTA: San Andreas* stations. [This is the original radio I built.]({{ site.baseurl }}{% link projects/grand-theft-auto-san-andreas-radio-set.md %})

![The GTA:SA radio](https://i.imgur.com/QhesgDH.jpg)

Also works with other games / universes as long as you have the soundtrack (*Fallout* anyone 😏 ?)

> Based on [Virtual_FM_Band](https://github.com/raphaelyancey/Virtual_FM_Band) and [pyKY040](https://github.com/raphaelyancey/pyKY040)

## Bill Of Materials

- 1 * [Raspberry Pi 3](https://rover.ebay.com/rover/1/709-53476-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.fr%2Fitm%2FRaspberry-Pi-3-Model-B-Plus-1-4GHz-Quad-Core-64Bit-1GB-RAM-2018-Model%2F261698200759%3Fhash%3Ditem3cee6da4b7%3Ag%3AvogAAOSwv2taw6rG) (might work on other SBC but not tested)
- 1 * Vintage radio (at least 10.5 x 18.5 x 5.5mm — keep the speaker!)
- 1 * [Small breadboard](https://rover.ebay.com/rover/1/711-53200-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.com%2Fitm%2FSYB-170-Mini-Breadboard-Colorful-Breadboard-Prototype-Board-Small-Plates-5pcs%2F153062633735%3Fhash%3Ditem23a33e7107%3Ag%3A1BQAAOSwe25bI3Q1)
- 2 * [KY040 encoder](https://rover.ebay.com/rover/1/711-53200-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.com%2Fitm%2F2pcs-KY-040-Rotary-Encoder-Module-for-Arduino-AVR-PIC-NEW%2F171906808593%3Fepid%3D755667868%26hash%3Ditem280671bb11%253Ag%253APH0AAOSwxYxUtnFB%26_sacat%3D0%26_nkw%3Dky040%26_from%3DR40%26rt%3Dnc%26_trksid%3Dp2047675.m570.l1313.TR11.TRC1.A0.H0.Xky040.TRS0)
- 1 * [USB DAC](https://rover.ebay.com/rover/1/709-53476-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.fr%2Fitm%2FAdaptater-USB-CARTE-SON-3D-5-1-AUDIO-MICRO-Virtuel-STEREO-EXTERNAL-PC-SOUND-CARD%2F153077145613%3Fhash%3Ditem23a41be00d%3Ag%3A3wUAAOSwK-ZbM1IE)
- 1 * [PAM8403 amplifier](https://rover.ebay.com/rover/1/711-53200-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.com%2Fitm%2F5PCS-Mini-Digital-Power-Amplifier-Board-PAM8403-Class-D-2-3W%2F171192554169%3Fhash%3Ditem27dbdf12b9%3Ag%3AAK8AAOSwA3dYbM4H) (or equivalent depending on your radio speaker)
- 1 * [Micro-USB panel mount](https://rover.ebay.com/rover/1/709-53476-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.fr%2Fitm%2FMicro-USB-2-0-Male-to-Female-connector-Adapter-Cable-30cm-With-Panel-Mount-Hole%2F391957934957%3Fhash%3Ditem5b4283736d%3Ag%3AQL0AAOSwPypaU6Lf) (male <> female)
- 18 * [DuPont prototyping wires](https://rover.ebay.com/rover/1/709-53476-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.fr%2Fitm%2F40-PCs-Dupont-Jumper-Wire-m-m-m-f-f-f-cable-pi-pic-pain-pour-Arduino%2F323094330106%3Fhash%3Ditem4b39ec3afa%3Am%3AmcoU4I8_C_nfzSke_wZCtRQ) (male <> female)
- 1 * [Male 1/8" audio jack](https://rover.ebay.com/rover/1/709-53476-19255-0/1?icep_id=114&ipn=icep&toolid=20004&campid=5338343247&mpre=https%3A%2F%2Fwww.ebay.fr%2Fitm%2F10pcs-3-5mm-1-8-Audio-Male-Plug-Jack-Adapter-Connector-DIY-Earphone-SpeakerFE%2F232857668261%3F_trkparms%3Daid%253D555018%2526algo%253DPL.SIM%2526ao%253D2%2526asc%253D20170831090034%2526meid%253D5943d94d2a2e4206a9ccd055a2548a98%2526pid%253D100005%2526rk%253D1%2526rkt%253D12%2526sd%253D122300324954%2526itm%253D232857668261%26_trksid%3Dp2047675.c100005.m1851)

... and some screws, bolts, wire & basic soldering tools. Also, a glue gun will be useful.

# Hardware
## 1. Empty the radio case
## 2. Solder the micro-USB panel mount to the Pi
## 3. Build the speaker assembly
## 4. Prepare the case
## 5. Position the Pi and the breadboard
## 6. Position the encoders

# Software
## Flash Raspbian to a SD card
## Install Virtual_FM_Band
## Install pyKY040
## Prepare your soundtrack files
## Make it run on boot