as yet unclassified
editContextForPerspective: per
	| window contextEditWindow |
	window := self components at: #editWindow ifAbsentPut: ((LikeMindsWindow on: [:w |
		w extent: 650 @ 300.
		(contextEditWindow := LikeMindsContextEditWindow parent: self)
			answer: [:script :confirm | 
				script add: (JSStream on: '$("overlay").hide()').
				confirm 
					ifTrue: [contextEditWindow saveChanges]
					ifFalse: [contextEditWindow cancelChanges].
				w closeOn: script];
			yourself]) 
		id: ('likeMindsWindow');
		yourself).
	
	window component perspective: per.
	^window