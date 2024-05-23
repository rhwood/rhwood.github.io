---
title: Static Servers/Dynamic Pages
date: 2005-07-24 00:00
categories: Mutterings
redirect_from:
  - /post/170829954145/static-serversdynamic-pages
---
Any developer who has worked the web knows that different browsers render content differently. I remember back in the day working to make sure that things rendered with pretty pictures in Netscape, degraded nicely in Mosaic, and worked flawlessly in Lynx (Netscape 1 was released while I was in college and I remember taking a course on using and developing for the internet and showing the Professor this wonderful new tool called the web&hellip;but that&rsquo;s a story for a different time).

In any event, I wanted to display some content that is platform or browser specific, not in the sense that some browsers support x subset of some standard while others support y subset of the same standard, but in the sense that I only want display a &ldquo;Get Firefox&rdquo; button when the page is not viewed using [Firefox](https://mozilla.org/firefox).

This journal loads the code to handle this need, it&rsquo;s just that it requires 230 lines of code and three extra file loads (I have all my javascript code that I used loaded from separate files instead of imbedded in the pages to be a good network citizen). Most of the code is the browser detection code, which I simply lifted wholesale without modification from the [Mozilla Foundation](https://www.mozilla.org). They don&rsquo;t recommend using it of course; there are far better ways to test for working plug-ins or javascript capabilities. The other two files a couple of functions that abstract the process of creating a link with a random image and the code that contains a list of images, one of which is picked at random, to display.

Here is the code I wrote:

```
function randomElementFromArray(theArray) {
        return theArray[Math.round(Math.random() * theArray.length - 1)];
}

function anchorWithRandomImage(anchor, images, altText) {
        return ('&lt;a href="' + anchor + '"&gt;&lt;img alt="' + altText + '" title="' + 
altText + '" src="' + randomElementFromArray(images) + '" /&gt;&lt;/a&gt;');
}

function getFirefox() {
        var buttons = new Array(5);
        buttons[0] = "https://sfx-images.mozilla.org/affiliates/Buttons/88x31/trust.gif";
        buttons[1] = "https://sfx-images.mozilla.org/affiliates/Buttons/88x31/rediscover.gif";
        buttons[2] = "https://sfx-images.mozilla.org/affiliates/Buttons/88x31/take.gif";
        buttons[3] = "https://sfx-images.mozilla.org/affiliates/Buttons/88x31/get.gif";
        buttons[4] = "https://sfx-images.mozilla.org/affiliates/Buttons/88x31/safer.gif";
        if (!isIE3Mac &amp;&amp; (is.ie || is.opera)) {
                document.writeln(anchorWithRandomImage('https://mozilla.org/firefox', buttons, 'Get Firefox!'));
        }
}
```

I&rsquo;m pretty heavy into abstraction, so it could be combined into one function, but there it is. The code to create the &ldquo;is&rdquo; object used for browser detection was boosted from the [Mozilla sniffer code](https://web.archive.org/web/20050408084646/https://www.mozilla.org/docs/web-developer/sniffer/browser_type_oo.html).
