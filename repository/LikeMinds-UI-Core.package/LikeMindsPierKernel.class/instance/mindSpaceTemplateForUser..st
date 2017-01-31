Mind Space
mindSpaceTemplateForUser: aUser
	| pages |
	pages := Array new.
	pages add: ((PRPage named: 'myMind')
		title: 'My Mind';
		contents: ('This is the mind page for ', aUser mind email);
		yourself).
	pages add: ((PRPage named: 'myPerspective')
		title: 'My Perspective';
		contents: ('!Perspectives
		
+/system/components/perspectiveEditWidget+');
		yourself).
	pages add: ((PRPage named: 'publications')
		title: 'Publications';
		contents: ('This is the publications page for ', aUser mind email);
		yourself).
	^pages