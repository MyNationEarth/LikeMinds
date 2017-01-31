as yet unclassified
systemManagementPage
	^ systemManagementPage ifNil: [
		systemManagementPage := (PRPage named: 'management')
		title: 'Management';
		addChild: ((PRComponent named: 'users')
				componentClass: PUUsersWidget;
				yourself);
		addChild: ((PRComponent named: 'groups')
				componentClass: PUGroupsWidget;
				yourself);
		addChild: ((PRComponent named: 'persistency')
				componentClass: PRPersistencySettings;
				yourself);
		addChild: ((PRComponent named: 'kernel')
				componentClass: PRKernelSettings;
				yourself);
		addChild: ((PRComponent named: 'file')
				componentClass: PRFileSettings;
				yourself);
		contents: '!Users
+users+

!User Group
+groups+

!Persistency
+persistency+

!Kernel Settings
+kernel+

!File Settings
+file+';
		yourself
	]