file system
likeMindsDirectory
  | likeMindsDirectory |
  "I answer the like minds directory"
  likeMindsDirectory := (GsFile _expandEnvVariable: 'LIKEMINDS' isClient: true)
    ifNil: [ ^ self error: 'The LIKEMINDS environment variable is not set' ].
  ^ (FileDirectory on: likeMindsDirectory) assureExistence