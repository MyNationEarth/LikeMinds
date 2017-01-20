as yet unclassified
printOn: aStream
	aStream 
		nextPutAll: 'a';
	 	nextPutAll: self class asString;
		nextPutAll: '(mind:';
		nextPutAll: mind email asString;
		nextPutAll: ' perspective:';
		nextPutAll: perspective displayName asString;
		nextPutAll: ')'.