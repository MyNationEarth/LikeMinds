as yet unclassified
makePublic: aStructure

	aStructure securityDecoration owner: self kernel users anyOne.
	aStructure securityDecoration otherPermissions: Set new.
	aStructure securityDecoration group: self kernel groups anyOne.