as yet unclassified
printOn: aStream
	aStream nextPutAll: self class name asString.
	aStream nextPut: $[.
	self asOop printOn: aStream.
	aStream nextPut: $].
	aStream nextPutAll: ' key:'.
	aStream nextPutAll: (LikeMindsSystem systems keyAtValue: self ifAbsent: ['<NotInSystems>']).