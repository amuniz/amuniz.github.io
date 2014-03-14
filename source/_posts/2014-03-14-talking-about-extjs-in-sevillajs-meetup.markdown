---
layout: post
title: "Talking about ExtJS in SevillaJS meetup"
date: 2014-03-14 19:19:17 +0100
comments: true
categories: development 
---

I was talking about ExtJS in the [SevillaJS meetup](http://www.meetup.com/SevillaJS/events/169441972/) yesterday.

The talk was not really a talk but a 2 hours live coding session. I used this slides as an introduction to the coding. They are not self-contained, but I put them here only for the last slide... I love it :-)

After 15 minutes with the slides I started to code an ExtJS app from scratch:

 * Create the basic project layout using Sencha CMD.
 * Add a view component with two buttons.
 * Apply hbox layout.
 * Add a controller to manage the click event in one of the buttons.
 * Add a grid to load a JSON from server (people.json).
 * Add a Person model.
 * Add a People store.
 * And finally add a more complex action to reload the grid on click the sencond button.

In the last 20 minutes I showed how we are using ExtJS at [ClinkerHQ](http://clinkerhq.com), on Clinker Desktop to be precise.

The code I wrote during the session is in [GitHub](https://github.com/amuniz/sevillajs-extjs), if you want to take a look. It's not runnable as is, you'll have to copy the ExtJS distribution to a directory named "ext" in order to get it running. It's a very simple example, but it could be useful for someone who is starting with ExtJS.

<iframe src="http://www.slideshare.net/slideshow/embed_code/32324390" width="750" height="500" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
