---
title: MacPorts / GNOME Weekly Report
date: 2006-09-23 00:00
categories: Mutterings
tags:
  - GNOME
  - MacPorts
  - Weekly Report
redirect_from:
  - /post/171247532835/macports-gnome-weekly-report
---
This is the first of what I hope will be a weekly report on the goings on with the [GNOME](https://www.gnome.org) packages carried by the [MacPorts](https://www.macports.org) project.

Most of the ports in the GNOME Platform are at least at the correct major.minor version, if not the most current version, with a couple of exceptions:
* __gnome-vfs__ gnome-vfs is a development version, as the current stable version requires a rigorous dbus, which MacPorts currently does not have. I have submitted some bug reports to the dbus project, trying to get dbus working.
* __gnome-vfs-monikers__ This is a new package in GNOME, and just simply has not been ported yet. Anyone want to help?
* __gtk-doc__ This package used to have some very nasty dependencies that neither the [Fink](https://www.finkproject.org) or MacPorts projects got working well. It may be portable now, but I have yet to attempt it. Most ports that would use it gracefully work around its absence.

The GNOME desktop is slowly being updated to the current packages, although any efforts on my part are directed at getting the platform working well first. My lowest priority with the GNOME packages is getting previously un-ported packages ported.

As always, any assistance in getting the GNOME packages ported or existing ports updated is appreciated.

I have a semi-automated [status list](https://trac.macports.org/wiki/GNOMEPackageStatus) of GNOME packages with the porting status. Packages listed as broken without comment are most likely on my machine at a more recent version than MacPorts is distributing as I have upgraded the port, but the upgrade has not filtered through the entire rsync process yet.

Report 1
