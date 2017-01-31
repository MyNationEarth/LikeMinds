Mind Space
makePrivateStructure: structure user: user
	
	structure securityDecoration owner: user.
	structure securityDecoration otherPermissions: Set new.
	structure securityDecoration group: user group.