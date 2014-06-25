textymous
========

anonymous texting, for whatever reason


the idea
-----

using the [twilio ruby gem](https://github.com/twilio/twilio-ruby) and API,
make an app/script that allows a user to text a twilio number with 2 pieces of
information (probably in ~~JSON~~ YAML); a "to" and "body".

i.e.:

```yaml
---
to: +1(778)-876-3589
body: "Hey dude, I'm white!" # => http://git.io/2ixiqA
---
```

this will then be parsed, and the body will be texted to the given number.

the given user / number can now reply through the twilio number,

i.e.:

```
What the heck man, who are you?
```

the response will then be sent to the original texter

the objective of this process is to keep the initial "texter"'s number anonymous while still being able to text with relative ease.


immediate anonymous bullying issue
------

as [zhuowei](https://twitter.com/zhuowei) mentioned [here](https://twitter.com/zhuowei/status/478777986468941825),
anonymous bullying will be an immediate issue we'll have to tackle.
i'm not sure how we'll solve this problem, as we don't want to limit
what either user can say. in the future, once everything actually works, etc,
we might want to add a 'report user' option, but i'm not
too sure how this will work. if anyone has any
ideas, feel free to make a pull request and add it to this readme :)

testing
-------

```bash
$ git clone https://github.com/trommel/textymous
$ cd textymous
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" # if you don't already have it
$ brew update; brew upgrade; gem update
$ [sudo] gem install bundler # if you don't already have it
$ brew install ngrok # if you don't already have it
$ bundle install
$ rails s
* start a new tab or something*
$ ngrok 3000
```

or, if you want to test a beta script for a beta app

```bash
$ git clone https://github.com/trommel/textymous
$ cd textymous
$ sh run.sh # make life easier
```

now text +1 (778) 654-1046 (don't include parentheses or dashes) in YAML with
the required two pieces of information

```yaml
---
to: +17788204128
body: "Hey dude"
---
```

**June 20, 2014, 3:48 AM:** The top and bottom `---` are automatically added to the text on the Rails server.
Users only have to text the `to:` and `from:` now :)

<u>**example:**</u><br>
![example screenshot](http://i.imgur.com/0cMcQze.jpg)

### side note
right now, this might not work for you because
the ngrok url isn't static. i can't fix
this problem until i can stop using ngrok,
which will be as soon as i have money to
afford a VPS for hosting.


contributing
------------

<u>***pull requests pull requests pull requests pull requests pull requests
pull requests pull requests pull requests pull requests pull requests
pull requests pull requests pull requests***</u>

things i should apparently cover, according to rails
----------------------------------------------------

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
*


extra info
----------

- the branch says "master" but the code says "unstable"

aw shit
----

**June 16, 2014, 11:10 PST:** sorry, i screwed up the commit messages
so i just scrapped them and started over. everything just says "Initial Commit" now.
