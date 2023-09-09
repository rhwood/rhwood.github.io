---
layout: single
title: Static servers/Dynamic pages (2)
date: '2005-09-19T00:00:00-04:00'
tags: []
redirect_from: /post/170867143890/static-serversdynamic-pages-2
---
<p>I rewrote my dynamic Get Firefox button code to be unobtrusive and to display the Firefox button no matter what. The code now only runs after the page is loaded and replaces an existing Firefox button in the page.</p>

<p>This code is cleaner and completely separates the operation from the display. Here is the new code:</p>

<pre><code>function getFirefox() {
    var buttons = new Array(5);
    buttons[0] = "http://sfx-images.mozilla.org/affiliates/Buttons/88x31/trust.gif";
    buttons[1] = "http://sfx-images.mozilla.org/affiliates/Buttons/88x31/rediscover.gif";
    buttons[2] = "http://sfx-images.mozilla.org/affiliates/Buttons/88x31/take.gif";
    buttons[3] = "http://sfx-images.mozilla.org/affiliates/Buttons/88x31/get.gif";
    buttons[4] = "http://sfx-images.mozilla.org/affiliates/Buttons/88x31/safer.gif";
    randomSourceForImageWithId('getFirefox', buttons);
}

function randomElementFromArray(theArray) {
    var item=theArray[Math.round(Math.random() * theArray.length - 1)];
    if (item) {
        return (item);
    } else {
        return(randomElementFromArray(theArray));
    }
}

function randomSourceForImageWithId(id, images) {
    var img=document.getElementById(id);
    img.src=randomElementFromArray(images);
}

window.onload=function() {
    getFirefox();
    // do anything else we need to do when the window is loaded here
}
</code></pre>
