baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'XMLParser' with: [
				spec repository: 'github://pharo-contributions/XML-XMLParser:master'].

			spec package: 'Neo-JSON-Core' with: [
				spec 
					repository: 'http://mc.stfx.eu/Neo'. ].

			spec
				package: 'Salesforce-Core'. ].