processing
send
	target handleEvent: self.
	"Log the Event"
	self log: (String streamContents: [:stream |
		stream nextPutAll: 'source:'.
		source printOn: stream.
		stream nextPutAll: ' target:'.
		target printOn: stream.
		stream nextPutAll: ' properties:'.
		properties printOn: stream.

	]).
	trace ifNotNil: [trace setSent].