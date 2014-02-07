# We're using Octopress
It's awesome.

[Check it out](http://octopress.org)

Just read their [docs](http://octopress.org/docs/). They tell you enough.
I've ripped out a lot of the guts of their blogging site to turn this
into a simple content serving site. You should be able to follow what's
going on. If not, drop me an email at rafiblecher@gmail.com

## Setup

You'll need to follow http://octopress.org/docs/setup/

I installed using RVM. If you do too, remember to

    source /home/rafi/.rvm/scripts/rvm

or whatever it is that the install process tells you to do.

## Consolidating files

Running `rake install[emanuel]` will load all files associated with the theme
(HTML, CSS, etc.) into the top-level source directory. You'll be in trouble if
you don't run this, so... run this.

## Running the server locally

    rake preview

## Adding a new page

We're doing URLs by folder-name/index.html, so that URLs are semi-beautiful
(/c-intro instead of /c-intro.html). This does mean that if you want to do
something on the URL /c-intro, you have to create the folder "c-intro" and
edit "index.html" inside that folder. Luckily, Octopress does this for you!
Just run

    rake new_page[c-intro]

and then edit source/c-intro/index.html, editing the information at the top to
be:

    ---
    layout: default
    title: "title of the page"
    ---

## Pushing
Before you push, run `deconsolidate.sh` in the main repo directory (above
`source`). This will save all files in source to the emanuel theme.
If you don't do this, you'll lose your changes when you next run
`rake install[emanuel]`.

Don't screw this up. Trust me, I have half a mind to put `./deconsolidate.sh`
in a git pre-push hook.
