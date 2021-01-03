---
layout: single
title: DHCP in VMware Server
date: '2008-03-08T00:00:00-05:00'
tags:
- contribution
- linux
- patch
- vmware
- work
redirect_from: /post/171927033445/dhcp-in-vmware-server
---
<p>I need to run a virtual machine on my <a href="/blog/2008/03/08/my-laptop-at-work/">work computer</a> that provides <a href="http://en.wikipedia.org/wiki/DHCP">DHCP</a> services on a host-only network. Unfortunately, <a href="http://vmware.com/products/server/">VMWare Server</a> on <a href="http://en.wikipedia.org/wiki/Linux">Linux</a> does not provide any mechanism for turning its DHCP services off.</p>

<p>Luckily, I found an <a href="http://vmwire.blogspot.com/2008/01/how-to-disable-host-only-networking.html">article</a> that addresses turning DHCP on or off for all host-only networks on the VMWare Server. I commented on that article with a technique for controlling DHCP on a per-network basis for host-only networks. I since have expanded on that with a patch for <em>/usr/lib/vmware/net-services.sh</em> that further refines the controls:</p>

<pre><code>--- net-services.sh 2008-03-06 11:08:41.000000000 -0500
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
</code></pre>

<p>It is <a href="http://homepage.mac.com/rhwood/software/vmware/net-services.sh.patch">available for download</a>.</p>
