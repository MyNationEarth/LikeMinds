file system
currentDirectory
    "Return the path name of the current directory."

    ^self isUnix
          ifTrue: [ (System performOnServer: 'pwd') trimWhiteSpace ]
          ifFalse: [ (System performOnServer: 'chdir') trimWhiteSpace ]