private-uri
queryUri
	^('https://{1}.lightning.force.com/services/data/v{2}/query'
		format: {self settings instanceName. self settings apiVersion}) asUrl.
	