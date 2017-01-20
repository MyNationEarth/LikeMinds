Local File System
fileDirectory
	^(self system conversationDirectory directoryNamed: self id asString)
		assureExistence