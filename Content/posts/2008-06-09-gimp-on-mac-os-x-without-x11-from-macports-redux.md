---
layout: single
title: Gimp on Mac OS X without X11 from MacPorts Redux
date: 2008-06-09 00:00
tags: GIMP, GNOME, macOS, MacPorts, X11
redirect_from: /post/171927887635/gimp-on-mac-os-x-without-x11-from-macports-redux
---
A few months ago, I wrote about using [Gimp](http://www.gimp.org/) on [Mac OS X](http://www.apple.com/macosx) without [X11](http://en.wikipedia.org/wiki/X11) from [MacPorts](http://www.macports.org/). Since then I&rsquo;ve upgraded my systems to Mac OS X Leopard (version 10.5), and experienced the [font rendering problem](http://trac.macports.org/ticket/15209) myself. That problem is now fixed.

If you need to get an existing installation of gimp working, do the following:

```
sudo port sync
sudo port upgrade cairo
sudo port -f uninstall pango
sudo port clean --all pango
sudo port install pango +no_x11
```

If you are installing Gimp for the first time, the following should work:

```
sudo port clean --all
sudo port install cairo +quartz +no_x11
sudo port install poppler +quartz
sudo port install gail +quartz
sudo port install gimp2
sudo port install gimp +quartz
```

__UPDATE:__ Check out the MacPorts users mailing lists ([http://lists.macosforge.org/mailman/listinfo/macports-users/](http://lists.macosforge.org/mailman/listinfo/macports-users/)) and trac database ([http://trac.macports.org](http://trac.macports.org)) for assistance if this does not work for you.
