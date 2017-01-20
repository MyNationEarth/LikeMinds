request handler
sendPasswordForAccount: emailAddress password: password
  ^ LMPlatform
    sendMessageFrom:
      '"Like Minds Member Services" <members-services@terra-australis-incognita.com>'
    to: emailAddress
    subject: 'Like Minds Membership Details'
    text:
      'This email has been sent at your request by clicking the "Forgot My Password" button.

You membership details for Like Minds are following.

Your membership account: '
        + emailAddress asString
        +
          '
Your membership password: ' + password asString
        +
          '

We look forward to seeing you again.

Cheers,

Like Minds Membership Services'