file system
logDirectory
  "I answer the like minds log file directory - by default it's $LIKEMINDS/logs"

  ^ (self likeMindsDirectory directoryNamed: 'log') assureExistence