---
title: DarwinPorts 1.2
date: 2005-12-17 00:00
categories: Mutterings
tags: MacPorts
redirect_from:
  - /post/170924977860/darwinports-12
---
Darwinports released a new version of the port engine this week and it broke my scripts that maintain the [GNOME on Darwinports](https://trac.macports.org/wiki/GNOMEPackageStatus) page. For some damned reason, the developers decided that tab-delimiting was not working, and so I had to rewrite my scripts to tokenize a string instead of simply exploding it into an array. Grr. Well, anyway things all work now.
