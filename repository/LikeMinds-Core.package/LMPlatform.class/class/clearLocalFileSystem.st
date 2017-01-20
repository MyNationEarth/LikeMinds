file system
clearLocalFileSystem
  "I remove all the directories under $LIKEMINDS_ROOT/system"

  System performOnServer: 'rm -Rf ' + self systemDirectory pathString