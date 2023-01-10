private-uri
baseObjectUrlFor: anObject
	| url |
	url := ('https://{1}.my.salesforce.com/services/data/v{2}/sobjects/{3}/' 
		format: {self settings instanceName. self settings apiVersion. anObject class modelName}) asUrl.
	^ url