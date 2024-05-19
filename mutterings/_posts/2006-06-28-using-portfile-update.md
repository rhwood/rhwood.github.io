---
title: Using portfile-update
date: 2006-06-28 00:00
categories: mutterings
tags: MacPorts
redirect_from:
  - /post/171246821685/using-portfile-update
---
About 6 months ago, I threw together a script to help me automate the process of updating a Portfile for a package from [GNOME](http://www.gnome.org) ftp servers. I called the script gport and wrote it in [PHP](http://php.net) simply because I knew that language.

I have been using that script to maintain the GNOME ports for the [DarwinPorts](http://www.darwinports.org) project, thinking all the while that it might be useful if it was more generalized, tweaking it and adding some features during this time.

I usually used the script with the `-o` flag so that its output would scroll past in Console.app, and sometimes with the `-k` flag so that I could return the output log after the script had successfully updated the port. (By default it deletes a log if the update was successful, but keeps the log if it fails. This has allowed me to scan my copy of the CVS repository when using [CVL](http://www.sente.ch/software/cvl/) for update failures, as CVL flags files not in CVS with a blue star.)

This past weekend, I rewrote the script to be a little more robust, and to update any Portfile (although automatic version determination only works for GNOME FTP server-based ports) and renamed it to be a little more meaningful.
