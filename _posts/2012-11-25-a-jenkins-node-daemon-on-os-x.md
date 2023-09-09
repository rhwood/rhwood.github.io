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
__Update:__ Use [Jenkins Slave for OS X](https://github.com/rhwood/jenkins-slave-osx) instead. It&rsquo;s based on these gists and has the benefit of being maintained.

I have been using [Jenkins](http://jenkins-ci.org">Jenkins</a> for [continuous integration](http://en.wikipedia.org/wiki/Continuous_integration) (CI) with some Java-based projects, and recently setup Jenkins for CI for a OS X application. For the Java-based projects, running Jenkins on a [Linode](http://www.linode.com/?r=b70e8c306162d25af8a47771c9226cdedf99e94a) works well, but the Linode-based Jenkins instance cannot build iOS or OS X applications.

Its easy to setup Jenkins to support [distributed builds](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds) with a OS X system as a slave, provided the master can initiate SSH communications to the slave. If, like me, your Jenkins master cannot initiate a connection with your slave (which is my desktop iMac), it is still trivial to configure the slave to use [Java Web Start](https://wiki.jenkins-ci.org/display/JENKINS/Distributed+builds#Distributedbuilds-LaunchslaveagentviaJavaWebStart) (JNLP).

I generally followed [Holger Staudacher&rsquo;s](http://eclipsesource.com/blogs/author/hstaudacher/) [post on the subject](http://eclipsesource.com/blogs/2012/06/01/ups-and-downs-with-continuous-integration-for-ios-apps-jenkins-xcode-cobertura-and-testflight/). However, he was frustrated by his inability to configure his Mac to automatically start the JNLP connection.

The following script launches the Jenkins slave service via Java Web Start after downloading the slave.jar file (thereby ensuring that the slave.jar is always the current version):

[https://gist.github.com/rhwood/4136130?file=slave.jnlp.sh#file-slave-jnlp-sh](https://gist.github.com/rhwood/4136130?file=slave.jnlp.sh#file-slave-jnlp-sh)

Launchd (the OS X launch manager) can launch this file using the following property list:

[https://gist.github.com/rhwood/4136130?file=org.jenkins-ci.slave.jnlp.plist](https://gist.github.com/rhwood/4136130?file=org.jenkins-ci.slave.jnlp.plist)

I have a simple script that can install these files for use by the user _jenkins_:

[https://gist.github.com/rhwood/4136130?file=install.sh#file-install-sh](https://gist.github.com/rhwood/4136130?file=install.sh#file-install-sh)

It can be run by copying the following command into a Terminal window:

`bash &lt;(curl -L [https://raw.github.com/gist/4136130/81ee34ac6dd01e4f81e9b69650041c64f2e09678/install.sh](https://raw.github.com/gist/4136130/81ee34ac6dd01e4f81e9b69650041c64f2e09678/install.sh))`