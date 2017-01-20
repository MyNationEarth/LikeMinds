Local File System
contextDirectory
	^(self fileDirectory directoryNamed: 'context')
		assureExistence