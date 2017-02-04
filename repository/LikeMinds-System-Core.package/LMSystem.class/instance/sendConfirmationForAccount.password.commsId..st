request handler
sendConfirmationForAccount: emailAddress password: password commsId: commsId
  ^ LMPlatform
    sendMessageFrom:
      '"Like Minds Member Services" <members-services@terra-australis-incognita.com>'
    to: emailAddress
    subject: 'Welcome To Like Minds'
    text:
      'Thank you for becoming a member of Like Minds - A Global Community determined to make the world a better place.

Your membership account: '
        + emailAddress asString
        +
          '
Your membership password: ' + password asString
        +
          '

To confirm your membership, click on the following link. 

http://likeminds.mynation.earth/LikeMinds/confirm?'
        , commsId asString
        ,
          '

Hope to see you soon.

Cheers,

Like Minds Membership Services'