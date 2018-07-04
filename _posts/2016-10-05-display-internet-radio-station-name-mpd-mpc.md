---
layout: post
title:  "Display Internet radio station name with mpd/mpc"
description: "A little hack to pass metadata into mpd/mpc streams."
date:   2016-10-05 18:07:51 +0200
categories: [ en ]
tags: [ linux, programming, python ]
---

In the process of making my own Internet radio with a Raspberry Pi, I struggled with `mpd` (the player I'm using on the Pi to read the streams) to display, via its `mpc` client, the custom names I wanted to set for each station. `mpd` was fine displaying tags broadcasted by the stream (artist, track, etc. when available) but no way to set "static" names for the stations.

Moreover, `mpd` doesn't handle ExtM3U tags very well. As replied by the maintainer I contacted, it merges the ExtM3U tags with received tags from the stream.
I tried several days to modify the source code to not merge the tags, but not being a C++ developper and not wanting to spend too much time on that, I found a better solution.

**TL;DR The solution is to append your custom station name to the stream URL, and then to extract it.**

In your `.m3u` file: `http://mystreamurl/;?station_name=MY_STATION_NAME`

In your radio script (Python in my case), get the currently playing URL with `mpc -f %file% current` and then extract the station name with a regex.

    #!/usr/bin/env python
    
    station_url = subprocess.check_output("mpc -f %file% current", stderr=subprocess.STDOUT, shell=True)
    # http://mystreamurl/;?station_name=MY_STATION_NAME

    result = findall(r'\?station_name=(.*)', station_url)
    # ['MY_STATION_NAME']

    print(result[0].replace('_', ' '))
    # MY STATION NAME

***Note:*** if your stream URL has nothing after the host name, e.g. `http://mystreamurl:8080` or `http://mystreamurl`, you must add a `;` before the query parameter `?station_name=X` as I did it in the example. Else, you can omit it.

Then do whatever you planned to do with it! I use it to display it on a LCD. You don't even need ExtM3U with this, simple M3U playlists will work.

Feel free to ask questions or suggest modifications!