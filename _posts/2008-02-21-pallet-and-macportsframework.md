---
layout: single
title: Pallet and MacPorts.Framework
date: '2008-02-21T00:00:00-05:00'
tags:
- cocoa
- macports
- macports.framework
- pallet
- objective-c
redirect_from: /post/171859744090/pallet-and-macportsframework
---
<p>A brief note on the status of <em>Pallet</em> and the <em>MacPorts.Framework</em>:</p>

<h1>Pallet</h1>

<p><em>Pallet</em> continues to have some user-interface weirdness that I have not really figured out (nor have I spent much time trying to figure it out either) and is dependent on getting the <em>MacPorts.Framework</em> completed</p>

<h1>MacPorts.Framework</h1>

<p>The framework has one two major issues:</p>

<ol><li>It needs to be capable of posting asynchronous notifications from the Tcl Framework to the Objective-C classes that are wrapping the Tcl code. I have found some reference code that may help me write an implementation, but have not begun doing so.</li>
<li>I am now thinking that I might need to write a MacPorts Application Kit Framework that would provide applications (which should run their user interfaces as the console user, not as root) an API that calls an authenticated helper for certain tasks. This may further push back Pallet development.</li>
</ol><p>I have just moved and am starting a new job next week, so I will probably not be picking these tasks up quickly, but if anyone wants to work these issues or projects with me, drop a line.</p>
