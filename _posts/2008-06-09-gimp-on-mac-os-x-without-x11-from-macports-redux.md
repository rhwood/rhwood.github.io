---
layout: single
title: Gimp on Mac OS X without X11 from MacPorts Redux
date: '2008-06-09T00:00:00-04:00'
tags:
- gimp
- gnome
- mac os x
- macports
- x11
redirect_from: /post/171927887635/gimp-on-mac-os-x-without-x11-from-macports-redux
---
<p>A few months ago, I wrote about using <a href="http://www.gimp.org/">Gimp</a> on <a href="http://www.apple.com/macosx">Mac OS X</a> without <a href="http://en.wikipedia.org/wiki/X11">X11</a> from <a href="http://www.macports.org/">MacPorts</a>. Since then I&rsquo;ve upgraded my systems to Mac OS X Leopard (version 10.5), and experienced the <a href="http://trac.macports.org/ticket/15209">font rendering problem</a> myself. That problem is now fixed.</p>

<p>If you need to get an existing installation of gimp working, do the following:</p>

<pre><code>sudo port sync
sudo port upgrade cairo
sudo port -f uninstall pango
sudo port clean --all pango
sudo port install pango +no_x11
</code></pre>

<p>If you are installing Gimp for the first time, the following should work:</p>

<pre><code>sudo port clean --all
sudo port install cairo +quartz +no_x11
sudo port install poppler +quartz
sudo port install gail +quartz
sudo port install gimp2
sudo port install gimp +quartz
</code></pre>

<p><strong>UPDATE:</strong> Check out the MacPorts users mailing lists (<a href="http://lists.macosforge.org/mailman/listinfo/macports-users/">http://lists.macosforge.org/mailman/listinfo/macports-users/</a>) and trac database (<a href="http://trac.macports.org">http://trac.macports.org</a>) for assistance if this does not work for you.</p>
