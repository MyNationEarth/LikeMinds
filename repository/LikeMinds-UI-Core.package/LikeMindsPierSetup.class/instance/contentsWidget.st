as yet unclassified
contentsWidget
	^ contentsWidget ifNil: [
		contentsWidget := (PRComponent named: 'contents')
		componentClass: PRContentsWidget;
		write: '' using: PRContentsWidget descriptionHeading;
		yourself
	].