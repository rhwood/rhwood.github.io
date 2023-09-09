---
layout: single
title: Gimp on Mac OS X without X11 from MacPorts
date: '2007-11-20T00:00:00-05:00'
tags:
- gimp
- gnome
- mac os x
- macports
- x11
redirect_from: /post/171859583235/gimp-on-mac-os-x-without-x11-from-macports
---
<p><a href="http://shyramblings.files.wordpress.com/2007/11/gimp.png"><img src="http://shyramblings.files.wordpress.com/2007/11/gimp.png?w=300" alt=""/></a></p>

<p>A screenshot of <a href="http://www.gimp.org/">Gimp</a> running on <a href="http://www.apple.com/macosx">Mac OS X</a> (version 10.4) without <a href="http://en.wikipedia.org/wiki/X11">X11</a> and installed using <a href="http://www.macports.org/">MacPorts</a></p>

<h4>Build It!</h4>

<pre><code>sudo port install poppler +quartz
sudo port install gimp2 +no_python
sudo port install gimp +quartz
</code></pre>

<p>If that fails, this should work:</p>

<pre><code>sudo port clean --all all
sudo port install cairo +quartz +no_x11
sudo port install poppler +quartz
sudo port install gail +quartz
sudo port install gimp2 +no_python
sudo port install gimp +quartz
</code></pre>

<h4>Notes</h4>

<ul><li>I did not have X11 installed on my computer. If X11 is installed on your computer, your milage may vary.</li>
<li>The supporting application jp2 crashes when Gimp is launched. Don&rsquo;t know why.</li>
<li>Python support is disabled, so no scripting or plugins are available in that language.</li>
</ul><p>Further issues with this procedure should be hashed out in the <a href="http://lists.macosforge.org/mailman/listinfo/macports-users">MacPorts Users Mailing List</a></p>

<p><strong>UPDATE:</strong> I tweaked the build instructions to resolve a problem with the Gimp application launcher.
<strong>UPDATE:</strong> Added a missing build instruction.</p>
