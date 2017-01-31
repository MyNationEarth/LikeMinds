as yet unclassified
buildFieldEditorAccordion
	| accordion |
	accordion := SUAccordion new.
	perspective pathToRoot do: [:p | | label editor |
		label := p == perspective
			ifTrue: [p displayName + ' Information']
			ifFalse: [p displayName + ' (Inherited)'].
		(editor := LikeMindsContextFieldsEditComponent parent: self)
			perspective: p;
			context: (self context user mind contextForPerspectiveOrNew: perspective).
		accordion add: editor label: label
	].
	^accordion