---
layout: post
title: portfile-update 0.1
date: 2006-06-28 00:00
categories: mutterings
tags: MacPorts
redirect_from:
  - /post/171246783880/portfile-update-01
---
This evening I published a new tool for [DarwinPorts](http://www.darwinports.org) called portfile-update. Run from a directory containing a DarwinPorts Portfile, it will upgrade the port to the specified version. If run against a port that is downloaded from the [GNOME](http://www.gnome.org) project&rsquo;s [download server (ftp.gnome.org)](http://ftp.gnome.org) or one of its mirrors, it will automatically determine which is the latest stable release and update the Portfile to that version. Switches allow it to update the Portfile to an arbitrary or the latest unstable version from the GNOME servers as well.

`portfile-update -h` provides usage instructions.

portfile-update is available for [download in a tar.gz archive](http://homepage.mac.com/rhwood/darwinports/portfile-update.0.1.tar.gz). Unpack it and copy the three (3) files in the portfile-update directory to some directory in your $PATH (like /opt/local/bin) to use it.

Still to do:

1. Find a CVS server for the tools
2. Make a Portfile for the project
3. Add further mechanisms for automatically finding the most recent version of a given port
4. Code the ability to pass it a port name for upgrading instead of having to run the Portfile directory.

Limitations:

* Automatic detection of versions only works from the GNOME FTP servers.
* Liable to crash when incorrectly run.
* Needs to be run from the Portfile directory.

Enjoy and please test!
