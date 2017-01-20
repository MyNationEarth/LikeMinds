as yet unclassified
descriptionPermissions
	^ MAToOneRelationDescription new
		accessor: #permissions;
		classes: (Array with: LikeMindsPermissions);
		label: 'Permissions';
		priority: 400;
		beRequired;
		yourself