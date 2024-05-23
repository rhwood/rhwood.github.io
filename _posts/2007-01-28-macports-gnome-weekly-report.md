---
title: MacPorts / GNOME Weekly Report
date: 2007-01-28 00:00
categories: Mutterings
tags:
  - GNOME
  - MacPorts
  - Weekly Report
redirect_from:
  - /post/171305214735/macports-gnome-weekly-report
---
I know, I know. This seems more like a quarterly report than a weekly report, but it is more that I took a sabbatical from port maintenance than that I have been lazy with this report.

Almost all of the ported [GNOME](https://www.gnome.org) packages are now at current stable versions! The big blocker on this was (and remains) [d-bus](https://dbus.freedesktop.org). It builds correctly, the d-bus glib bindings build correctly, but d-bus does not work correctly. Try running the test suite (__make check__) after building it and you&rsquo;ll see the problem.

I am planning on reworking the TODOs section of the [MacPorts GNOME](https://trac.macports.org/wiki/GNOME) page such that it is up-to-date and every TODO is listed as a ticket in the tracker.

Report 6
