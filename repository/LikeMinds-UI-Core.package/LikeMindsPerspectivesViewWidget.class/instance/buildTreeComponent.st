as yet unclassified
buildTreeComponent
	| tree |
	(tree := SUTreeReport new)
		roots: (Array with: self perspective);
		children: [ :value | 
			(value children select: [:p | p enabled])
				asSortedCollection: [ :a :b | a displayName < b displayName ] ];
		addColumn: self columnPerspective label: 'Global Perspectives';
		addColumn: self columnPerspectiveActions label: 'Actions'.
	
	^tree