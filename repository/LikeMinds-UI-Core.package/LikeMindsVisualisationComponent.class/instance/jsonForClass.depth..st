json
jsonForClass: aClass depth: depth 

	| data children object |
	data := Dictionary new.
	data at: '$color' put: ( self colorOfClass: aClass ).
	data at: 'comment' put: aClass labelDescription asString.
	data at: 'leaf' put: (aClass children isEmpty).
	children := depth > 0 
			ifTrue: [
				(aClass children asSortedCollection: [: c1 : c2 | 
						c1 children size <= c2 children size and: [c1 name <= c2 name]
				])
					collect: [: c | self jsonForClass: c depth: depth - 1 ]
			]
			ifFalse: [ #( )].
	object := Dictionary new.
	object at: 'name' put: aClass labelTitle asString.
	object at: 'id' put: ( self idForPassenger: aClass ).
	object at: 'data' put: data.
	object at: 'children' put: children.
	^ object