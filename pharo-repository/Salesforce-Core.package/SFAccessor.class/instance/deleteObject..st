actions
deleteObject: object
	| url |
	url := ('https://{1}.my.salesforce.com/services/data/v{2}/sobjects/{3}/{4}'
		format: {self settings instanceName. self settings apiVersion. object class modelName. object id}) asUrl.
	^ self client httpDelete: url.
	
