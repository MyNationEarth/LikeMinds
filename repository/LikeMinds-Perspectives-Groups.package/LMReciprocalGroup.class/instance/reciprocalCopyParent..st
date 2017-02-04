as yet unclassified
reciprocalCopyParent: aParent
  "Messy switch"

  (aParent isKindOf: LMPerspectiveContext)
    ifTrue: [ ^ self reciprocalCopyToContext: aParent ].
  (aParent isKindOf: LMMind)
    ifTrue: [ ^ self reciprocalCopyToMind: aParent ].
  ^ self error: 'Unknown LMReciprocalGroup parent type ' , aParent printString