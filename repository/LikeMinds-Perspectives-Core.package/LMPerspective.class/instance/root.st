as yet unclassified
root
	^self isRoot
		ifTrue: [self]
		ifFalse: [parent root]