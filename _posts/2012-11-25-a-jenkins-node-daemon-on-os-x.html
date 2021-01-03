---
layout: single
title: A Jenkins Node Daemon on OS X
date: '2012-11-25T00:00:00-05:00'
tags:
- Jenkins
- continuous integration
- development
- OS X
redirect_from: /post/65038713155/a-jenkins-node-daemon-on-os-x
---
<p><strong>Update:</strong> Use <a href="https://github.com/rhwood/jenkins-slave-osx">Jenkins Slave for OS X</a> instead. It&rsquo;s based on these gists and has the benefit of being maintained.</p>

<p>I have been using <a href="http://jenkins-ci.org">Jenkins</a> for <a href="http://en.wikipedia.org/wiki/Continuous_integration">continuous integration</a> (CI) with some Java-based projects, and recently setup Jenkins for CI for a OS X application. For the Java-based projects, running Jenkins on a <a href="http://www.linode.com/?r=b70e8c306162d25af8a47771c9226cdedf99e94a">Linode</a> works well, but the Linode-based Jenkins instance cannot build iOS or OS X applications.</p>

<p>Its easy to setup Jenkins to support <a href="https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds">distributed builds</a> with a OS X system as a slave, provided the master can initiate SSH communications to the slave. If, like me, your Jenkins master cannot initiate a connection with your slave (which is my desktop iMac), it is still trivial to configure the slave to use <a href="https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds#Distributedbuilds-LaunchslaveagentviaJavaWebStart">Java Web Start</a> (JNLP).</p>

<p>I generally followed <a href="http://eclipsesource.com/blogs/author/hstaudacher/">Holger Staudacher&rsquo;s</a> <a href="http://eclipsesource.com/blogs/2012/06/01/ups-and-downs-with-continuous-integration-for-ios-apps-jenkins-xcode-cobertura-and-testflight/">post on the subject</a>. However, he was frustrated by his inability to configure his Mac to automatically start the JNLP connection.</p>

<p>The following script launches the Jenkins slave service via Java Web Start after downloading the slave.jar file (thereby ensuring that the slave.jar is always the current version):</p>

<div class="gist"><a href="https://gist.github.com/rhwood/4136130?file=slave.jnlp.sh#file-slave-jnlp-sh">https://gist.github.com/rhwood/4136130?file=slave.jnlp.sh#file-slave-jnlp-sh</a></div>

<p>Launchd (the OS X launch manager) can launch this file using the following property list:</p>

<div class="gist"><a href="https://gist.github.com/rhwood/4136130?file=org.jenkins-ci.slave.jnlp.plist">https://gist.github.com/rhwood/4136130?file=org.jenkins-ci.slave.jnlp.plist</a></div>

<p>I have a simple script that can install these files for use by the user <em>jenkins</em>:</p>

<div class="gist"><a href="https://gist.github.com/rhwood/4136130?file=install.sh#file-install-sh">https://gist.github.com/rhwood/4136130?file=install.sh#file-install-sh</a></div>

<p>It can be run by copying the following command into a Terminal window:</p>

<pre><code>bash &lt;(curl -L <a href="https://raw.github.com/gist/4136130/81ee34ac6dd01e4f81e9b69650041c64f2e09678/install.sh">https://raw.github.com/gist/4136130/81ee34ac6dd01e4f81e9b69650041c64f2e09678/install.sh</a>)
</code></pre>
