Local File System
fileDirectory
	^(self system mindDirectory directoryNamed: self id asString)
		assureExistence