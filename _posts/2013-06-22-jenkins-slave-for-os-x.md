---
title: Jenkins Slave for OS X
date: 2013-06-22 00:00
categories: Mutterings
redirect_from:
  - /post/64952583530/jenkins-slave-for-os-x
---
After [writing about some scripts I wrote]({% post_url 2012-11-25-a-jenkins-node-daemon-on-os-x %}) to allow [Jenkins](https://jenkins-ci.org/) running on a [Linode](https://www.linode.com/?r=b70e8c306162d25af8a47771c9226cdedf99e94a) to schedule builds on my iMac, I continued to tweak those scripts until I realized that I could not maintain them in a [gist](https://help.github.com/articles/creating-gists). The updated scripts are [on GitHub](https://github.com/rhwood/jenkins-slave-osx).

## Why?

If I didn&rsquo;t travel for work, I could have simply run a Jenkins server at home; however, since I travel, I could either:

1. get a fixed IP address for my home network and run Jenkins on my iMac
2. run Jenkins on a Mac mini from [macminicolo.net](https://web.archive.org/web/20160406111552/https://www.macminicolo.net/) or a similar provider
3. run a Jenkins server on a Linode and run a Jenkins slave on my iMac

I choose the third option, but quickly discovered that I would need to either:

1. get a fixed IP address for the slave and use SSH to connect the Jenkins server and slave (initiated by the server and supported by the Jenkins project)
2. manually start a JNLP slave on the iMac and use HTTPS to connect the server and slave (initiated by the slave and supported by the Jenkins project)
3. script the process of automatically starting a JNLP slave on the iMac (commented on, but not supported by the Jenkins project)
