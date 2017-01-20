as yet unclassified
reciprocalCopyParent: aParent
	"Messy switch"
	(aParent isKindOf: LikeMindsContext)
		ifTrue: [^self reciprocalCopyToContext: aParent].
	(aParent isKindOf: LikeMindsMind)
		ifTrue: [^self reciprocalCopyToMind: aParent].
	^self error: 'Unknown LikeMindsReciprocalGroup parent type ', aParent printString.