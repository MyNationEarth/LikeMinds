as yet unclassified
updateVariables

	self context isLoggedIn
		ifTrue: [mind ifNil: [mind := self context user mind]]
		ifFalse: [mind ifNotNil: [mind := nil]]