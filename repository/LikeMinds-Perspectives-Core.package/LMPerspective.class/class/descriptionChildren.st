as yet unclassified
descriptionChildren
	^ MAToManyRelationDescription new
		accessor: #children;
		classes: (Array with: LikeMindsPerspective);
		label: 'Children';
		priority: 400;
		beOrdered;
		beReadonly;
		beHidden;
		yourself