private
sendHeader
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: 'From: '; nextPutAll: self from; nextPutAll: self crlfString.
	stream nextPutAll: 'To: '; nextPutAll: self to; nextPutAll: self crlfString.
	stream nextPutAll: 'Cc: '; nextPutAll: self cc; nextPutAll: self crlfString.
	stream nextPutAll: 'Subject: '; nextPutAll: self subject; nextPutAll: self crlfString.
	^self sendCrlfString: stream contents