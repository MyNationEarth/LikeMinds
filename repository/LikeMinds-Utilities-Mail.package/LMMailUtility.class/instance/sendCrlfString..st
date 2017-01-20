private
sendCrlfString: aString
	self log: aString.
	^(self write: aString, self crlfString) == (aString size + 2)