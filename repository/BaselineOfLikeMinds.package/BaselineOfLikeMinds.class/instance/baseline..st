baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'LikeMinds-Core';
			package: 'LikeMinds-Relationships-Core' with: [
				spec requires: #('LikeMinds-Core' ). ];
			package: 'LikeMinds-Utilities-Mail';
			package: 'LikeMinds-Events-Core' with: [
				spec requires: #('LikeMinds-Core' ). ];
			package: 'LikeMinds-Events-Handlers' with: [
				spec requires: #('LikeMinds-Events-Core' ). ];
			package: 'LikeMinds-Locations-Core' with: [
				spec requires: #('LikeMinds-Core' ). ];
			package: 'LikeMinds-Perspectives-Groups' with: [
				spec requires: #('LikeMinds-Events-Handlers' ). ];
			package: 'LikeMinds-Perspectives-Core' with: [
				spec requires: #('LikeMinds-Perspectives-Groups' ). ];
			package: 'LikeMinds-Perspectives-Events' with: [
				spec requires: #('LikeMinds-Perspectives-Core' ). ];
			package: 'LikeMinds-Web-Events' with: [
				spec requires: #('LikeMinds-Events-Core' ). ];
			package: 'LikeMinds-System-Core' with: [
				spec requires: #('LikeMinds-Perspectives-Events' 'LikeMinds-Web-Events' 'LikeMinds-Relationships-Core' 'LikeMinds-Utilities-Mail' ). ];
			package: 'LikeMinds-UI-Core'. ].