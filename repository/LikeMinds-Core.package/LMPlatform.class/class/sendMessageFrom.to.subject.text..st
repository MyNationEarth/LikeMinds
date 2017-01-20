email
sendMessageFrom: fromAddress to: emailAddress subject: subject text: messageText
  | hosts |
  hosts := self mailHostsForEmailAddress: emailAddress.
  hosts keys asSortedCollection
    do: [ :key | 
      | host |
      "Try sending to the hosts in order of the MX record preferences"
      host := hosts at: key.
      true
        ==
          (LMMailUtility new
            mailhostName: host;
            from: fromAddress;
            to: emailAddress;
            subject: subject;
            text: messageText;
            ownDomainName: 'mynation.earth';
            send)
        ifTrue: [ ^ true ] ].
  ^ false