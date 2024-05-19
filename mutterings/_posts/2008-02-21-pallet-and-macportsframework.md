---
title: Pallet and MacPorts.Framework
date: 2008-02-21 00:00
categories: mutterings
tags: Cocoa, MacPorts, MacPorts.framework, Pallet, Objective-C
redirect_from:
  - /post/171859744090/pallet-and-macportsframework
---
A brief note on the status of _Pallet_ and the _MacPorts.Framework_:

## Pallet

_Pallet_ continues to have some user-interface weirdness that I have not really figured out (nor have I spent much time trying to figure it out either) and is dependent on getting the _MacPorts.Framework_ completed

## MacPorts.Framework

The framework has one two major issues:

1. It needs to be capable of posting asynchronous notifications from the Tcl Framework to the Objective-C classes that are wrapping the Tcl code. I have found some reference code that may help me write an implementation, but have not begun doing so.
2. I am now thinking that I might need to write a MacPorts Application Kit Framework that would provide applications (which should run their user interfaces as the console user, not as root) an API that calls an authenticated helper for certain tasks. This may further push back Pallet development.

I have just moved and am starting a new job next week, so I will probably not be picking these tasks up quickly, but if anyone wants to work these issues or projects with me, drop a line.
