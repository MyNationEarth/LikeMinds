as yet unclassified
withUUID: uuid
	id = uuid 
		ifTrue: [^self]
		ifFalse: [
			children do: [:child | | found |
				(found := child withUUID: uuid) ifNotNil: [^found]
			]
		].
	^nil