as yet unclassified
root
	| mindSpace perspectivePage |
	self rootPage
		addChild: self blog;
		addChild: (perspectivePage := self perspectivesPage);
		addChild: self membershipPage;
		addChild: (mindSpace := self mindSpacePage);
		addChild: self confirmMembershipPage;
		addChild: (self aboutPage
				addChild: self syntaxPage;
				yourself);
		addChild: (self systemPage
			addChild: (self componentsPage
				addChild: self headerPage;
				addChild: self footerPage;
				addChild: self menuPage;
				addChild: self myMenuWidget;
				addChild: self membershipWidget;
				addChild: self windowWidget;	
				addChild: self dialogWidget;
				addChild: self membershipConfirmationWidget;
				addChild: self perspectiveWidget;
				addChild: self perspectiveEditWidget;
				addChild: self childrenWidget;
				addChild: self breadcrumbWidget;
				addChild: self googleAnalyticsWidget;
				addChild: self sitemapPage;
				addChild: self viewsPage;
				addChild: self commandsPage;
				addChild: self loginCommandWidget;
				addChild: self contentsWidget;
				addChild: self stylesheetFile;
				addChild: self postTickerWidget;
				addChild: self blogArchiveWidget;
				addChild: self searchWidget;
				addChild: self poweredPage;
				addChild: self loggedInUserPage;
				addChild: self documentWidget;
				yourself);
			addChild: self systemManagementPage;
			addChild: (self templatesPage
				addChild: self environmentPage;
				addChild: self blogEnvironmentPage;
				addChild: self mainEnvironmentPage;
				addChild: self metaEnvironmentPage;
				yourself
			);
			yourself
		).
	self rootPage localEnvironment: self mainEnvironmentPage.
	mindSpace localEnvironment: self environmentPage.
	perspectivePage localEnvironment: self environmentPage.
	self blog localEnvironment: self blogEnvironmentPage.
	self aboutPage localEnvironment: self mainEnvironmentPage.
	self environmentPage localEnvironment: self metaEnvironmentPage.
	self mainEnvironmentPage localEnvironment: self metaEnvironmentPage.
	self metaEnvironmentPage localEnvironment: self metaEnvironmentPage.
	self systemManagementPage localEnvironment: self metaEnvironmentPage.
	self rootPage localStyleSheet: self stylesheetFile.
	self rootPage enumerator
		with;
		all;
		do: 
			[ :each | 
			each securityDecoration owner: self kernel users anyOne.
			each securityDecoration group: self kernel groups anyOne ].
	self makePrivate: self systemPage.
	self makePrivate: self environmentPage.
	self makePrivate: self blogEnvironmentPage.
	self makePrivate: self mainEnvironmentPage.
	self makePrivate: self metaEnvironmentPage.
	self makePrivate: self sitemapPage.
	self makePrivate: self viewsPage.
	self makePrivate: self commandsPage.
	self makePrivate: self systemManagementPage.
	self makePrivate: self loggedInUserPage.
	^ self rootPage