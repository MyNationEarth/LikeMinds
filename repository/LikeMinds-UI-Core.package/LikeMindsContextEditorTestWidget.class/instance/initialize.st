as yet unclassified
initialize
	super initialize.
	editor := LikeMindsContextFieldsEditComponent parent: self.
	editor perspective: (LikeMindsSystem current perspective).
		"(UUID fromString: 'dbcb863d-df40-4435-aa37-819a73dd607a'))." "Root"
		"(UUID fromString: '11d2adb8-17d5-4eec-a34d-de2a7e0f1649'))." "Friends"
	editor context: (self context user mind contextForPerspectiveOrNew: LikeMindsSystem current perspective)