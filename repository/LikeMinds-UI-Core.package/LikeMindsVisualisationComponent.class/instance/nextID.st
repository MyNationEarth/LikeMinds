properties
nextID
	| nextID |
	nextID := properties at: #nextID ifAbsentPut: [ 0 ].
	^properties at: #nextID put: nextID + 1