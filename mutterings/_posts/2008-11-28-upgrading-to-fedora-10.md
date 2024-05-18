---
layout: post
title: Upgrading to Fedora 10
date: 2008-11-28 00:00
categories: mutterings
tags: Fedora, upgrade, VMware
redirect_from:
  - /post/170889338170/upgrading-to-fedora-10
---
Yesterday morning I upgraded my work laptop from Fedora 9 to [Fedora 10](http://fedoraproject.org/get-fedora). Other than a couple of issues outlined below, the experience seemed reasonable:

#### Issues

* The bootloader (grub) did not upgrade correctly, leaving me at a grub prompt when the computer started. Apparently this is a common issue. The fix was simple in my case:
  1. `root (hd0,1)`
  2. `setup (hd0,1)`
* [VMware Workstation](http://www.vmware.com/products/ws/) refused to heal from the upgrade. Usually VMware Workstation just heals itself after I update the kernel, but for some reason it refused to heal itself. Again a simple fix:
  1. `rm /usr/lib/vmware/modules/binary`
  2. `vmware modconfig --console --install-all`
* Immediately after installing Fedora (on only the second day after its release) there were a ridiculous number of updates to be downloaded, so I basically the first thing I did with the system was let it download and install updates for three hours.

#### References

* [Fedora 10 Upgrade Experience | tofu.org](http://tofu.org/drupal/node/69)
* [Geekdom » Post Topic » Fedora 10 + VMware Workstation 6.5.0](http://geekdom.wesmo.com/2008/11/14/fedora-10-vmware-workstation-650/)
