---
layout: post
title:  "One-liner to mount your RaspberryPi with NFS"
date:   2017-06-28 18:07:51 +0200
categories: [ en ]
tags: [ raspberrypi, linux ]
---

#### A very useful script for allowing remote code edition on a RaspberryPi.

... or really any Debian-based machine :)

<script src="https://gist.github.com/raphaelyancey/b9c6a297b7bb52eb8aba1b4de01cb641.js"></script>

Make sure you've installed the packages in the top comment, and added the mentionned line to your `/etc/exports` file.

Place the script in your home folder (`/home/pi` by default) and rename it to `nfs-start.sh`. Allow execution with `chmod +x nfs-start.sh`.

**Each time you want to remotely edit files on your RaspberryPi, launch the script with `ssh pi@[hostname-or-ip] ./nfs-start.sh`.**

Then, on OSX / macOs, open the Finder and hit `⌘ + K`. Add your server like so : `nfs://[hostname-or-ip]/home` and you're done!
Next time, the server will already be listed and you won't have to type it again.