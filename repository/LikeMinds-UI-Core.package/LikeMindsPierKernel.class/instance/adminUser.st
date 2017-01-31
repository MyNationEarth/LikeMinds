as yet unclassified
adminUser
	^ self propertyAt: #adminUser ifAbsentPut: [
		(LMPierUser named: 'root')
			addGroup: self adminGroup;
			superuser: true;
			yourself ]