---
title: DarwinPorts Happenings
date: 2006-03-13 00:00
categories: Mutterings
tags: MacPorts
redirect_from:
  - /post/171050440385/darwinports-happenings
---
Some DarwinPorts happenings:

__gnome-keyring-manager__
Added the gnome-keyring-manager package to the DarwinPorts ports collection, but have not got it to work. It sees the gnome-keyring-daemon, but can&rsquo;t talk to it. I hope this is not a broken dbus issue.

__dbus__
Am experimenting with dbus 0.61 on Mac OS X with GNOME and DarwinPorts. I have no clue how I would go about making sure that the Mac OS X user does not wind up spamming his session with dbus daemons, since AFAIK OS X has no easy mechanism for foreign per-user-session daemons to be launched so that all applications can see them.

I am going through my monthly installation of the gnome meta-port on a clean machine. It is not going as smoothly as I had hoped. Need to learn how to really debug TCL.
