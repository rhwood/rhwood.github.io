---
layout: post
title: Time Machine and Space
date: 2019-09-21 09:47
categories: mutterings
tags: disk space, macOS
redirect_from:
  - /post/187858692205/after-some-continual-struggles-to-manage-disk
---
After some continual struggles to manage disk space on my 2013 MacBook Pro (when purchased, I went for the small disk and maximum RAM), I found a command to run in the Terminal to free up space when needed:

`while [ $( tmutil listlocalsnapshots / | wc -l ) -gt 1 ] ; do sudo tmutil thinlocalsnapshots / 400GB 1 ; done`

This only works if you are using Time Machine for backups though.

Although this command freed up only about 1/5 of my disk, it also wound up reducing the amount of disk used for the &ldquo;System&rdquo; as reported by the System Utility in macOS 10.14.6.
