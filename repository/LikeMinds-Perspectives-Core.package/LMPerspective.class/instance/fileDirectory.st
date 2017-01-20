Local File System
fileDirectory
	^(self system perspectiveDirectory directoryNamed: self id asString)
		assureExistence