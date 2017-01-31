as yet unclassified
treeComponent
	"Answer the tree component or create a new one if it doesn't exist"
	^self components at: #tree ifAbsentPut: [self buildTreeComponent]