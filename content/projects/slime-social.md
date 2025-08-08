---
title: Slime Social
description: Communication via slimes?
categories:
  - Projects
tags:
  - game
params:
  completed: true

---

Slime Social is a now defunct chatroom game / website that I made in highschool. Our school had banned students from chatting to each other via microsoft teams, so I started developing this to get around that

![](/images/projects/slime-social.gif)

It started off as a game you ran on your computer. As seen above, you would control a slime, move around and be able to send messages to other people running the game. It was written in lua using the love2d framework (just like [Box Battlegrounds 2](https://marcusoosthuizen.com/project/box-battlegrounds/))

![](/images/projects/slime-social.webp)

I eventually gave up on trying to make a standalone game and moved to turning it into a website. The first version of the site allowed you to set a username and chat with other users online. Simple. Until...

![](/images/projects/slime-social2.webp)

I rewrote the entire site! Better ui, an online users list, easier username changing, improved message formatting with timestamps and better error handling / spam prevention. I had planned to add chatrooms and chat filtering (<- this caused some problems), but I never got around to it. 

Then school ended and there was no need for the website anymore :(

All versions of slime social worked by having the client communicate to a central server running a lua / python script. The source code for all versions can be found [here](https://github.com/marcusoosthuizen/slime-social).
