operating system
pathSeparator
    "Return the path separator character."

    ^self isUnix
        ifTrue: [ $/ ]
        ifFalse: [ $\ ]