as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common do: [ 
			spec
				baseline: 'NeoJSON' with: [ spec 
					repository: 'github://svenvc/NeoJSON:master/repository' ].
			
			spec
				baseline: #OSSubprocess with: [ spec
						repository: 'github://pharo-contributions/OSSubprocess:master/repository' ] ].
	spec
		package: #BabelSt with: [ spec
			 requires: #('OSSubprocess' 'NeoJSON') ];
		package: #'BabelSt-Test' with: [ 
			spec requires: #(#BabelSt) ]