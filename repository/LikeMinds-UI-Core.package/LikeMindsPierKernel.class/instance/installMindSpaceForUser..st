Mind Space
installMindSpaceForUser: aUser
	| userMindSpace |
	"I create the user space for aMind"
	userMindSpace := ((PRPage named: aUser mind id asString)
		title: aUser mind id asString;
		hideFromMenus: true;
		yourself).
	self makePrivateStructure: userMindSpace user: aUser.
	(self mindSpaceTemplateForUser: aUser) do: [:template |
		userMindSpace addChild: template
	].
	self mindsSpace addChild: userMindSpace.