as yet unclassified
adminGroup
	^ self propertyAt: #adminGroup ifAbsentPut: [ LMPierGroup named: 'admin' ]