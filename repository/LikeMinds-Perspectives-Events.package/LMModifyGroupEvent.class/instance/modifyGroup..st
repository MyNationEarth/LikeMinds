as yet unclassified
modifyGroup: group
	group description do: [:description |
		| selector |
		selector := self selectorKeyForAccessor: description accessor.
		(description isReadonly not and: [self fields includesKey: selector])
		 	ifTrue: [
				group write: (self fields at: selector) using: description.
			]
	].
	^group