Mind Space
removeMindSpaceForMind: aMind
	| mindSpace |
	(mindSpace := self mindSpaceForMind: aMind) ifNotNil: [mindSpace remove]