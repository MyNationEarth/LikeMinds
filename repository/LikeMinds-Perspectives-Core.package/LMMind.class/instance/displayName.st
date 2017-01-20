as yet unclassified
displayName
	| stream |
	stream := WriteStream on: String new.
	givenName ifNotNil: [stream nextPutAll: givenName; nextPut: $ ].
	familyName ifNotNil: [stream nextPutAll: familyName; nextPut: $ ].
	stream
		nextPut: $(;
		nextPutAll: email;
		nextPut: $).
	^stream contents