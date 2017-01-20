as yet unclassified
descriptionFields
	^ MAToManyRelationDescription new
		accessor: #fields;
		default: Array new;
		classes: [ LikeMindsField withAllConcreteClasses ] magritteDynamicObject;
		label: 'Fields';
		priority: 400;
		beOrdered;
		yourself