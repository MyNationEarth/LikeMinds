as yet unclassified
tree
	^self context 
		at: #tree 
		ifAbsent: [
			self context at: #tree put:
				(SUTreeReport new
					expand: Collection;
					roots: (Array with: self perspective);
					children: [ :value | 
						value children
						asSortedCollection: [ :a :b | a displayName < b displayName ] ];
					addColumn: [ :value | 
							[: html | html anchor
								callback: [self setPerspective: value];
								with: value displayName
							]
					]
						label: 'Name';
					addColumn: [ :value | value comment ]
						label: 'Comment';
					yourself)
		]