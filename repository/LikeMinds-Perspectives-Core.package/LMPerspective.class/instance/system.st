as yet unclassified
system
	^self isRoot
		ifTrue: [parent system]
		ifFalse: [self root system]