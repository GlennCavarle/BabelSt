baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/GlennCavarle/BabelJS/main/'.
		spec 
			project: 'JSON' with: [
				spec
					className: #ConfigurationOfJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main/' ];
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: #'stable';
					repository: 'http://www.squeaksource.com/OSProcess' ].
		spec 
			package: #BabelJS with: [
				spec requires: #('OSProcess' 'JSON' ). ];
			package: #'BabelJS-Test' with: [
				spec requires: #(#BabelJS ). ]. ].
