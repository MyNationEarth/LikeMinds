as yet unclassified
documentWidget
	^documentWidget ifNil: [
		documentWidget := (PRComponent named: 'sidebar')
		title: 'Sidebar Document';
		componentClass: PRDocumentWidget;
		yourself
	]