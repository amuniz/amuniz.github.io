---
layout: post
title: "Unix processes memory usage"
date: 2014-07-14 13:36:58 +0200
comments: true
categories: [unix, memory, util] 
---

I'm not a sys admin, but sometimes I need to profile applications in development or production environments. When
this happens I realize that I don't remember those large -very large- commands using awk and prints everywhere.

Today was one of that days, so I decided to write this post as a reference for myself.

<br />
**Total memory usage**:

    {% codeblock %}
    $> ps aux |  awk '{print $6/1024}' | awk '{sum += $1}; END {print sum " MB"}'
    {% endcodeblock %}

<br />
**Total memory usage by process, for example Apache**:
 
    {% codeblock %}
    $> ps aux | grep apache2 | awk '{print $6/1024}' | awk '{sum += $1}; END {print sum " MB"}'
    {% endcodeblock %}  

<br />
**Average memory used by a process (if it uses childs)**:

    {% codeblock %}
    $> ps aux | grep apache2 | awk '{print $6/1024;}' | awk '{avg += ($1 - avg) / NR;} END {print avg " MB";}'
    {% endcodeblock %}  

<br />
All of them use process's resident memory (not virtual memory).

That's all.