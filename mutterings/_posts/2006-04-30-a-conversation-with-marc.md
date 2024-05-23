---
title: A Conversation with Marc
date: 2006-04-30 00:00
categories: Mutterings
tags:
  - GNOME
  - MacPorts
redirect_from:
  - /post/171242330555/a-conversation-with-marc
---
> On 29 Apr 2006, at 18:35, Marc wrote:
>
> Hey thanks a lot!  I&rsquo;m using fink;  any advantages to using darwinports?  I&rsquo;m so glad I recently discovered about how to run gnome on OSX, now I don&rsquo;t even need my Ubuntu partition.  Are there any essential files you recommend I should get?  Also, how do I edit the menu at the top, and say, add icons for programs I&rsquo;ve downloaded (such as gimp)&hellip; Ubuntu has &ldquo;alacarte&rdquo;, but I don&rsquo;t see any way to do it in this port of gnome.

I use Darwinports because I understand it. I moved from Fink to DarwinPorts when I wanted to port a piece of software (I now forget what) that required a more recent version of Gnome than Fink supported at the time (and apparently still supports). BTW, I have become the principal maintainer of Gnome for DarwinPorts.

DarwinPorts is working hard to remain current with Gnome, while Fink&rsquo;s installation is more stable, though dated. The downside to DarwinPorts is that every port must be built on your local machine while Fink provides ready-to-run binaries of its ports.

We do not have a working menu editor, but once most ports are installed, gnome-panel can be relaunched and the new port will simply appear. Note that some ports need to be built with a +gnome option in DarwinPorts for Gnome to be aware of them.

> On Apr 29, 2006, at 5:47 PM, Randall Wood wrote:
>
> > On 29 Apr 2006, at 14:56, Marc wrote:
> >    
> > I stumbled onto your site and noticed you&rsquo;re running Gnome within the Mac&rsquo;s X11.  I do the same and was wondering if I could actually replace Aqua with gnome completely.  Is there a way to do that??  Thanks Randall.

AFAIK Aqua can not be completely replaced by Gnome on Mac OS X 10.4. I know it could be on 10.3, but that on 10.4, the boot/login process (I forget if it was one or the other or both) required that Aqua be running.

You can however, use Metacity as the window manager and use X11 in full screen mode. A key combo would allow you to switch back and forth between X11 and Aqua in that case. This is how I run Gnome on 1 of my laptops. Many things are missing from the complete Gnome installation&ndash;they simply have not been successfully ported into Mac OS X yet, so you will have to drop back into Aqua to complete various tasks.

If you use Gnome from DarwinPorts, see [https://trac.macports.org/wiki/GNOME](https://trac.macports.org/wiki/GNOME) for details. Running Gnome from Fink should be fairly similar.

I happen to use the DarwinPorts packages for my Gnome.
