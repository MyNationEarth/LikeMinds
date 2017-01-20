Local File System
fileDirectory
  "I answer the file directory for this system. by default it's:
		LMPlatform likeMindsDirectory / my system key"

  ^ (LMPlatform systemDirectory directoryNamed: self systemKey) assureExistence