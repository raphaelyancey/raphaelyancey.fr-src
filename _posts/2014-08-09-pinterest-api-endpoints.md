---
layout: post
title:  "Pinterest API useful endpoints"
date:   2014-08-09 18:07:51 +0200
categories: [ en ]
tags: [ programming, api ]
---

Some useful API endpoints you can use to retrieve pins from an user's profile or specific board :

* `https://api.pinterest.com/v3/pidgets/boards/[username]/[board_name]/pins/` retrieves last 50 pins for a specific user's board
* `https://api.pinterest.com/v3/pidgets/users/[username]/pins/` retrieves last 50 pins (globally)
* `http://i.pinimg.com/originals/[xx]/[yy]/[zz]/[xxyyzz...].jpg` retrieves the pin in its original size (this URL format is returned by the previous methods)

**Pinterest hasn't released a public API yet**, and the API key seems to be hard to get.

_**Edit**: I used these endpoints in my [Pinwatcher](https://raphaelyancey.github.io/Pinwatcher) script that allows you to backup & save your or someone's pins to your hard drive._