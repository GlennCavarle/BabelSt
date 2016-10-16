as yet unclassified
baseline: spec
	<baseline>

	spec for: #'common' do: [spec 
			configuration: 'JSON' with: [
				spec
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main/' ];
			configuration: 'OSProcess' with: [
				spec
					versionString: #'stable';
					repository: 'http://www.squeaksource.com/OSProcess' ].
		spec 
			package: #BabelSt with: [
				spec requires: #('OSProcess' 'JSON' ). ];
			package: #'BabelSt-Test' with: [
				spec requires: #(#BabelSt). ]. ].
