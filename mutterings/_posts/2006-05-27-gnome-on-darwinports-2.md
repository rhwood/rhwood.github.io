---
title: GNOME on DarwinPorts (2)
date: 2006-05-27 00:00
categories: Mutterings
tags:
  - GNOME
  - MacPorts
redirect_from:
  - /post/171246705545/gnome-on-darwinports-2
---
Since my primary machine went down 2 weeks ago, I have had a chance (and a need) to reinstall GNOME from scratch with DarwinPorts. This has resulted in many bugs being fixed over the past week or so and with the exception of one bug related to a bad server[^1], I have managed to commit fixes into CVS.

We are beginning to see upgrade releases leading to the release of GNOME 2.14.2 appear, so the next week or so will be busy with upgrading existing ports to incorporate recent fixes (stable feature-based upgrades should not be appearing before September for the most part) and then I will be working on getting as much of the GNOME packages into a working state on DarwinPorts as I can.

Of Note:

`gstreamer`

The gstreamer upgrades from 0.8.x -&gt; 0.10.y are significant. gnome-media, a long-standing gnome package that only got into DarwinPorts in late April/early May uses gstreamer 0.10.y to play sounds and video in GNOME. Not all ported applications that use sound in GNOME work at this point however.

`gnome-vfs`

The 2.14.1 version of gnome-vfs is not building right now, stopping a number of other ports from being upgraded as well.

I hope to be able to get back to really working on GNOME by Tuesday now that I have my primary (faster) computer back&hellip;

[^1]: __UPDATE:__ The server hosting the bug report was decommisioned years ago, so the reference and link have been removed.