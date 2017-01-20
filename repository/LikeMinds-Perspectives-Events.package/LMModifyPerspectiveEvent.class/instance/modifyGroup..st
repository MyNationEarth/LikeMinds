as yet unclassified
modifyGroup: perspective
	"NOTE: Update to use magritte"
	super modifyGroup: perspective.
	(self fields includesKey: #fieldsToModify) 
		ifTrue: [self modifyPerspective: perspective modifyFields: (self fields at: #fieldsToModify)].
	^perspective