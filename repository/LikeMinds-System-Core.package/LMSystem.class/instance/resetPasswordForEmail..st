events - minds
resetPasswordForEmail: email
  | newPassword mind |
  (mind := self findMindWithEmail: email)
    ifNil: [ self error: #'NoMindWithEmail' ].
  newPassword := LMPlatform randomPassword.
  (self sendPasswordForAccount: mind email password: newPassword)
    ifTrue: [ 
      "Only reset password if the email was sent"
      mind password: newPassword.
      ^ true ]
    ifFalse: [ 
      "Password email not sent"
      ^ false ]