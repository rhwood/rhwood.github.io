---
title: On Rebuilding a Blog
date: 2024-05-23 00:00
categories: Ramblings
---

I recently rebuilt this blog, which has migrated repeatedly from different services as they have come and gone, or as I have grown frustrated with some limitation of the service. The latest iteration is powered by GitHub Actions and includes CI tests to verify links are not stale.

This revealed lots of things about writing little throw away snippets:
- If a port depends entirely upon an image or other media that is no longer available, it looses all meaning. (I removed a few posts due to this.)
- Companies may remove blog posts they feel are no longer relevant to their product/solution set.
- The [Internet Archive](https://archive.org) is not as complete as one would hope.
- There remains a surprising number of maintained sites that do not support HTTPS / TLS well, if at all.
