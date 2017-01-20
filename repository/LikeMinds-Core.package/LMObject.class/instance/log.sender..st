log
log: message sender: sender
	"TODO: Somehow find the appropriate system and send via 
	 that instance rather than the OSkLogTarget default"
	"(OSkStringLogEntry for: (String streamContents: [:stream |
		stream nextPutAll: '<m>'.
		sender printOn: stream.
		stream nextPut: Character space.
		stream nextPutAll: message.
		stream nextPutAll: '</m>'.
	])) log"