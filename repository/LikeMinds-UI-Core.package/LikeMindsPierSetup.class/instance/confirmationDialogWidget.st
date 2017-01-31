as yet unclassified
confirmationDialogWidget
	| widget |
	widget := (PRComponent named: 'confirmationDialog')
		componentClass: LikeMindsConfirmationWidget;
		yourself.
	^widget