operating system
randomPassword
  | random randomPassword |
  random := Random new.
  randomPassword := String new.
  8
    timesRepeat: [ 
      | char |
      [ 
      (char := Character value: (random integerBetween: 48 and: 122) integerPart)
        isAlphaNumeric ]
        untilTrue.
      randomPassword add: char ].
  ^ randomPassword contents