---
title: Updating a Time Machine
date: 2026-11-14 00:00
categories: Ramblings
tags:
  - iFixit
  - macOS
  - Time_Capsule
  - Time_Machine
---
When macOS 26 began warning me that the [AirPort Time Capsule](https://en.wikipedia.org/wiki/AirPort_Time_Capsule) I’d been using for Time Machine backups was not going to be supported starting with macOS 27, I knew I had to think more about how I back data up (iCloud is great for synchronizing data, but horrible for backing it up). However, before I could act on that I had to leave town for a few months to [take care of my father]({% post_url 2026-11-15-parent-care %}), and just continually got warnings about how long it’s been since I backed up the MacBook.

Once I got back, I learned:
1. At some point, the Time Capsule suffered a soft disk failure and wasn’t really working anyway.
2. [James Chang](https://github.com/jamesyc) created a nice hack, [TimeCapsuleSMB](https://jamesyc.github.io/TimeCapsuleSMB/), to keep the ⁣Time Capsule running.

At some point in 2022, I had [replaced the hard drive in the Time Capsule](https://www.ifixit.com/Guide/Airport+Time+Capsule+A1470+Hard+Drive+Replacement/61924) with a larger drive. (I think it had reported a disk failure prior to that but don’t recall.)

In any event, I got the Time Machine running with SMB, discovered, the backups for my MacBook weren’t working (the backup image was corrupted in some way), determined the backups from machines long forgotten were no longer wanted, reformatted the drive, reinstalled TimeCapsuleSMB, and two days later (that first backup took a lllooooonnnnnnggg time) have Time Machine backups again.