---
title: The State of Gnome on Darwinports
date: 2006-05-06 00:00
categories: mutterings
tags: GNOME, MacPorts
redirect_from:
  - /post/171245516590/the-state-of-gnome-on-darwinports
---
I broke Gnome and did not see it happening until later. Sorry about that.

The Gnome desktop is currently broken for new installs. The big breaker is Nautilus (port version = 2.12.x), which depends on some library (I&rsquo;m not sure which) being version 2.12.x, when that library is currently at 2.14.x. Nautilus 2.14.x, however, requires gnome-vfs to be version 2.14.x (see below).

This whole sorry mess stems from problems I am having getting the gnome-vfs package to version 2.14.1 (current). I am really hoping that I get it working (if somewhat crippled) before 2.14.2, which promises to fix these problems, is released.

I am aware that some Intel users and some Mac OS X 10.3.x users are reporting problems building the Gnome ports. I think I have a fix for the 10.3.x users but have to find the time to completely implement it (it seems that the linker is sometimes not seeing the X11R6 libraries).

A project to clean the dependency structures of the Gnome ports is about 2/3rds done. This project mostly involves figuring out which dependencies are also dependencies of a dependency and then paying close attention to the bug reports to determine what I should not have yanked out.

New release of Gstreamer (and its plugin ports) is being build tested. A question: does anyone have a known working test case for gstreamer that I can use?

I also have a (mostly) working tool that kind of automates the upgrade process for a port in the Gnome tree. I&rsquo;ll release it as soon as I 1) kill the bug in it that has sometimes causes it to write a Portfile without checksums and 2) get it to allow me to specify a port version on the command line to build.

I am trying to be more proactive about finding and fixing problems before they occur but also have to admit that I am not a programmer and have no formal training in any programming languages or tools other than Borland&rsquo;s Turbo Pascal on DOS about 12 years ago in high school. I am going to try keep the build problems I am seeing well-aired on the gnome-darwinports mailing list&ndash;if you can help me duplicate or fix problems, please subscribe to that list.
