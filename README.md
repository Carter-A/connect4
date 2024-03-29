Captain's Mistress Workshops
============================

Please note: there are several branches in this repo:
* MASTER is the baseline (original) repo,
* RHN1 is the branch representing the work completed at Ruby Hack Night July,
* RHN2 is the branch representing the work completed at Ruby Hack Night September,
* RHN3 is the branch representing the work completed at Ruby Hack Night November.

###Introduction

During his long sea voyages, Captain Cook often retired to his cabin for long periods. The crew used to joke that he had a mistress hidden away. Soon they discovered that the Captain had simply been playing this game with the ship's scientist. Thus it came to be known as 'The Captain's Mistress’.

This repo contains an exercise for our ninth(?) workshop presented by me, David Andrews. This workshop is about teamwork and integration of much of our past workshop topics.

We have provided a repository which mimics the setup we used last time, so it should be familiar. The code to be created is found in the ``lib/`` directory, and we have supplied the beginning of unit tests in the ``spec/`` directory.

###Setup

Here are the steps to get you started with the repo. We assume, naturally, that you have a working development machine with Ruby 1.9 or better on it. At Ryatta Group we use rbenv, and so we've included some optional elements - just skip them if you're using rvm or are not versioning your Ruby.

```sh
% git clone git@github.com:k00ka/captains-mistress.git
% cd captains-mistress
% gem install bundler
Fetching: bundler-1.7.4.gem (100%)
Successfully installed bundler-1.7.4
1 gem installed
% bundle
Fetching gem metadata from https://rubygems.org/.........
Resolving dependencies...
Installing rake 10.3.2
...
Using bundler 1.7.4
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.
```
######Note: if you use rbenv...
```sh
% rbenv rehash
```
You are (almost) there!

<<<<<<< 28da9fe5b73b585bf5acf7470c20b640c056307f
=======
===
Instructions for the first session:
===

>>>>>>> Update README.md
###Rules

1. The game consists of balls and a rack.  
1. There are 2 coloured sets of 21 balls each, coloured black and white.  
1. The rack has 7 channels (columns) and 6 rows.  
1. The rack is oriented vertically so that the balls create 7 stacks.  
1. Two players take turns dropping balls into the channels.  
1. A ball falls until it lands on top of the existing stack, or the bottom of the rack.  
1. Players cannot drop balls into channels that are full.  
1. The winner is the first player to create a line of four balls in any direction.  

###The game?

No, not Bejeweled.  
It's Connect Four!  
[see the deck for images]  

###From the very(!) high level here is what we need:

* The Game and 2 Players.  
* The Game entity manages  
** the game board  
** enforcing the rules (including flow of play), and  
** game state (including winning conditions).  
* The Player entity answers the question  
** what is your next move?
* The Player entity will want to ask questions about the game state in order to make decisions.  
** How do Players ask questions? Through an API!

###Divide and conquer

Split up into three teams:

1. Strategy Team 1  
1. Strategy Team 2  
1. Game Core Team  

###Plan for development

####Phase 1
> Game Core Team - use TDD to develop the game components  
> Strategy Team 1 & 2 - research play strategies  

####Phase 2
> All - work together to define the API  

####Phase 3
> Game Core Team - build the API  
> Strategy Team 1 & 2 - implement (several?) strategies  

####Phase 4
> All - pit players against each other and play!  


###Useful resources
####Game Core Team
https://www.pivotaltracker.com/n/projects/1396446  

####Strategy Teams
http://gizmodo.com/heres-how-to-win-every-time-at-connect-four-1474572099  
https://en.wikipedia.org/wiki/Connect_Four  


<<<<<<< 28da9fe5b73b585bf5acf7470c20b640c056307f
If you want to learn (more) about TDD, there are plenty of online resources. For a quick primer, you can review our blog post from the previous workshop: [http://www.ryatta.com/refactoring-in-context/]

###To play:
```sh
% ruby play.rb
```

## NOTE: See the README in each branch for more resources related to the work done at each Hack Night. What follows is specific to the Automaton building exercise:

### Workshop Agenda
The Captain takes his final voyage tonight at Ruby Hack Night at The Score in Toronto.
The basic agenda for this evening's workshop follows, culminating in the ULTIMATE SILICON SWORD FIGHT (pardon?)
1. Review work to-date (i.e. demo the game and talk briefly about our progress).
1. Build a simple Automaton together and learn about the AI API and "match mode".
1. Discuss approaches to building tough opponents.
1. In teams, design, build and test new Automatons.
1. Bring together your best Automatons and use match mode to declare a victor.

We will aim to run the round-robin matches on the big screen around 8:45.

###Adding an Automaton
1. New automatons are created in the `lib/automatons` subdirectory.
1. The name used for the automaton will be your class's name. The class must inherit from the `Automaton` class.
1. The automaton must implement the move method (otherwise a runtime error is raised).
1. You may use the public interfaces of any class. The most interesting interfaces will be the `Rack`, `Cell`, and `Game` classes.
1. The move method should `puts` the chosen channel. The channel should be returned. Remember, `puts` returns `nil` so the puts cannot be the last line!

###Pull Requests
To participate in the final sword fight, you will need to fork the repo so we can use pull requests to bring your new Automatons into this repo. This should be done just before the event, as we will be posting updates here throughout the day.

Many of you have already cloned the repo. Here are instructions on how to convert a cloned repo into a fork:

1. In github, fork the Captain's Mistress repo. Here's the repo address: `https://github.com/k00ka/captains-mistress`
1. On your machine, rename your origin remote to upstream: `git remote rename origin upstream`
1. Add a new origin: `git remote add origin https://github.com/GITHUBNAME/captains-mistress.git`
1. Fetch & push: `git fetch origin` then `git push origin`
1. When ready, push up your changes, create a pull request in github and tap me on the shoulder.
=======
If you want to learn (more) about TDD, there are plenty of online resources. For a quick primer, you can review our blog post from the previous workshop: [http://www.ryatta.com/refactoring-in-context/]

The first part of this project was presented at Ruby Hack Night on July 29, 2015. The output from that session is contained in the rhn1 branch.

<<<<<<< HEAD
===
Instructions for the second session:
===

<<<<<<< 2d2a1e08c0bb8c31f76010f42981f828943fbc79
The second part of this project will be presented at Ruby Hack Night on August 27, 2015. The starting point is the current rhn2 branch. The output from that session will be pushed to the rhn2 branch so we have a final record of all work.
>>>>>>> Update README.md
=======
The second part of this project as presented at Ruby Hack Night on August 27, 2015 in the `rhn2` branch. Instructions are contained in the PDF available in the root of the project on the `rhn2` branch. The output from that session was pushed to the `rhn2` branch so we have a final record of all work.

The third part of this project is being presented at Ruby Hack Night in November.
>>>>>>> 96e05e608ce50d6ec46a1b9e8e2ea3dce137e5dd
=======
The second part of this project will be presented at Ruby Hack Night on August 27, 2015. The starting point is the current rhn2 branch. Instructions are contained in the PDF available in the root of the project on the rhn2 branch.

The output from that session will be pushed to the rhn2 branch so we have a final record of all work.
>>>>>>> Update README.md
