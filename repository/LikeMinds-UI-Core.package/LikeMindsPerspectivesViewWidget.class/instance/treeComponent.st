as yet unclassified
treeComponent
	^self components at: #tree ifAbsentPut: [self buildTreeComponent]