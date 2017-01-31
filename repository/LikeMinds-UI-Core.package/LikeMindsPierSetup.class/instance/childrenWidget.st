as yet unclassified
childrenWidget
	^ childrenWidget ifNil: [childrenWidget := (PRComponent named: 'children')
		componentClass: PRChildrenWidget;
		write: 2
			using: PRChildrenWidget descriptionLevel;
		write: true
			using: PRChildrenWidget descriptionExpand;
		yourself
	]