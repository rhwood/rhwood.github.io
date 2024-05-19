---
title: DHCP in VMware Server
date: 2008-03-08 00:00
categories: mutterings
tags: contribution, Linux, patch, VMware, work
redirect_from:
  - /post/171927033445/dhcp-in-vmware-server
---
I need to run a virtual machine on my [work computer](/blog/2008/03/08/my-laptop-at-work/) that provides [DHCP](http://en.wikipedia.org/wiki/DHCP) services on a host-only network. Unfortunately, [VMWare Server](http://vmware.com/products/server/) on [Linux](http://en.wikipedia.org/wiki/Linux) does not provide any mechanism for turning its DHCP services off.

Luckily, I found an [article](http://vmwire.blogspot.com/2008/01/how-to-disable-host-only-networking.html) that addresses turning DHCP on or off for all host-only networks on the VMWare Server. I commented on that article with a technique for controlling DHCP on a per-network basis for host-only networks. I since have expanded on that with a patch for _/usr/lib/vmware/net-services.sh_ that further refines the controls:

```
--- net-services.sh 2008-03-06 11:08:41.000000000 -0500
+++ /usr/lib/vmware/net-services.sh 2008-03-06 11:15:27.000000000 -0500
@@ -694,9 +694,22 @@
                exitcode=$(($exitcode + $?))
             elif [ -n "$hostaddr" -a -n "$netmask" ]; then
                vmware_create_vmnet "$vHubNr"
+  # default to providing DHCP for hostonly networks
+  VMWARE_HOSTONLY_DHCP=yes
+  # VMWARE_HOSTONLY_DHCP can be set in /etc/vmware/services
+  # to turn DHCP on or off in every hostonly vmnet 
+  if [ -f '/etc/vmware/services' ]; then
+   source '/etc/vmware/services'
+  fi
+  # VMWARE_HOSTONLY_DHCP can be set in /etc/vmware/vmnet?/services
+  # to turn DHCP on or off in a specific hostonly vmnet
+  # this setting overrides the global and default settings
+  if [ -f '/etc/vmware/vmnet'"$vHubNr"'/services' ]; then
+   source '/etc/vmware/vmnet'"$vHubNr"'/services'
+  fi
                vmware_bg_exec 'Host-only networking on /dev/vmnet'"$vHubNr" \
                   vmware_start_hostonly "$vHubNr" 'vmnet'"$vHubNr" \
-                  "$hostaddr" "$netmask" 'yes'
+                  "$hostaddr" "$netmask" "$VMWARE_HOSTONLY_DHCP"
                exitcode=$(($exitcode + $?))

                eval 'nat="$vmdb_answer_VNET_'"$vHubNr"'_NAT"'
```

It is [available for download](http://homepage.mac.com/rhwood/software/vmware/net-services.sh.patch).
