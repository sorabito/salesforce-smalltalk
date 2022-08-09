actions
createObject: object
	| url |
	url := ('https://{1}.my.salesforce.com/services/data/v{2}/sobjects/{3}/' 
		format: {self settings instanceName. self settings apiVersion. object class modelName}) asUrl.
	^ self client httpPost: url contents: (ZnEntity json: object properties asJsonString)
