as yet unclassified
buildTreeComponent
	^((SUTreeReport new)
			"expand: Collection;"
			roots: (Array with: self perspective);
			children: [ :value | 
				value children
				asSortedCollection: [ :a :b | a displayName < b displayName ] ];
			addColumn: [ :value | 
				[: html | html anchor
					callback: [self perspective: value];
					with: value displayName
				]
			]
				label: 'Perspective';
			addColumn: [ :value | value members size ] label: 'Members';
			addColumn: [ :value | value events size ] label: 'Events';
			addColumn: [ :value | value comment ] label: 'Comment';
			addColumn: self columnPerspectiveActions label: 'Actions';
			yourself)