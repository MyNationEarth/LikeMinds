as yet unclassified
selectorKeyForAccessor: accessor
	"NOTE: Clean this messy thing up. don't like ifTrue ifFalse chains"

	^(accessor isKindOf: MAChainAccessor)
		ifTrue: [self selectorKeyForAccessor: accessor accessor]
		ifFalse: [
			(accessor isKindOf: MASelectorAccessor)
				ifTrue: [accessor selector]
				ifFalse: [
					(accessor isKindOf: MADictionaryAccessor)
						ifTrue: [accessor key]
						ifFalse: [nil]
				]
		]