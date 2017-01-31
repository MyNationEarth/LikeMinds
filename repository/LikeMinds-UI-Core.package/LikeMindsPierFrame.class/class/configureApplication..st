as yet unclassified
configureApplication: application
	super configureApplication: application.
	application configuration
		addParent: LikeMindsPierConfiguration instance.
	application 
		"addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;"
		addLibrary: JQHumanityTheme;
		addLibrary: PTDeploymentLibrary;
		addLibrary: SUDeploymentLibrary;
		addLibrary: SUComponentLibrary;
		addLibrary: LikeMindsFileLibrary;
		removeLibrary: PRBlueprintLibrary