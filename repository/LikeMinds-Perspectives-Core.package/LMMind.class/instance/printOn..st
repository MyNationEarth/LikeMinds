as yet unclassified
printOn: aStream
	aStream nextPutAll: 'a', self class asString, '(', email asString, ')'