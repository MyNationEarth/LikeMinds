as yet unclassified
leavePerspective: target
	| mind |
	self system 
		leaveGroup: target
		mind: (mind := self context user mind)
		owner: mind