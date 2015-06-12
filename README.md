textymous
========

Anonymous texting, for whatever reason.

## Objective
Keeping the initial "texter"'s number anonymous while still being able to text with relative ease has always been a bit of a awkward and annoying process. Even as apps like TextPlus were released there's never been a way to anonymously text numbers natively. Textymous sets out to achieve that.

I recently attended a Rails meetup at [CodeCore](http://codecore.ca/) and talked to some great people about the awesome things you can do with Rails. Students demonstrated their projects and everyone discussed the possibilities the project could achieve. While I was there I discussed textymous with a few people, one suggesting the possibility of extending textymous to locations with limiting contact to the outside world, that have access to text abilities on their phones, but may not have the ability to download apps from a marketplace. He also mentioned textymous could help anonymous texting available older phone users, as their phone might not support third-party apps.

Testing
-------

Textymous is still in alpha, and I haven't worked on it in quite some time. I plan on working on it more over the Summer of 2015.

For testing you'll need [ngrok](https://github.com/inconshreveable/ngrok), [bundler](http://bundler.io), and [http://rubyonrails.org].

```bash
brew install ngrok # OS X (For Linux distros use appropriate package manager (apt-get, yum, pacman, etc))
gem install bundler rails
```
Then clone the project and get it running.

```bash
git clone git@github.com:probablyjosh/textymous.git
cd textymous
ngrok
bundle install
rails s
ngrok 3000 # In a new tab (for local hosting that can be connected to Twilio)
```

Now try texting `+17786541046` with your body (in YAML)

Example syntax:

```yaml
---
to: +17788204128
body: "Hey dude, I'm here!"
---
```

Docs
----------------

Textymous can also give you a bit of information if you know what you're looking for.

- Text 'please help' for a couple examples on how to use textymous
- Text 'who am I' for your username (usernames will be stored in a database for later use by other users to identify you with)


Contributing
------------

Feel free to make a pull request and make any additions or fixes you feel helpful or important.
