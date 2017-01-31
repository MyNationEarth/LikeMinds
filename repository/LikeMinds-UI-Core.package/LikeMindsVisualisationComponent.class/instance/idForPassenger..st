properties
idForPassenger: anObject 

	^ self passengerIDs at: anObject ifAbsentPut: [
		| id |
		id := self nextID printString.
		"id := anObject labelTitle asSymbol."
		self passengers at: id put: anObject.
		id
	].