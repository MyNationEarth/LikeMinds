file system
systemDirectory
  "I answer the like minds directory - by default it's $LIKEMINDS/system"

  ^ (self likeMindsDirectory directoryNamed: 'system') assureExistence