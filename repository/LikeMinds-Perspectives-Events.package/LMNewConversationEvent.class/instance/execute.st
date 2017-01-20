as yet unclassified
execute
  "Add a new group with the supplied fields
	target: parent to add new group to"

  self checkPermission: #'addConversation'.
  ^ self createGroup