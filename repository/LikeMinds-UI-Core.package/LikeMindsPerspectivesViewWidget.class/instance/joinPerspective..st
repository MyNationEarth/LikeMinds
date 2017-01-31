as yet unclassified
joinPerspective: target
	| mind |
	self system 
		joinGroup: target
		mind: (mind := self context user mind)
		owner: mind