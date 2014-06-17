textymous
========

anonymous texting, for whatever reason


the idea
-----

using the [twilio ruby gem](https://github.com/twilio/twilio-ruby) and API, make an app/script that allows a user to text a twilio number with 2 pieces of information (probably in JSON); a "to" and "body".

i.e.:

```json
{
 "to": "+17788766549",
  "body": "Hey dude, I'm behing you"
}
```

this will then be parsed, and the body will be texted or called to the given number.

the given user / number can now reply through the twilio number,
which will be handled with [TwiML](https://www.twilio.com/docs/api/twiml)

i.e.:

```html
<Response>
    <Sms>What the heck man, who are you?</Sms>
</Response>
```

the response will then be parsed into text and texted
back to the original texter

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
