actions
createObject: object
	| url |
	url := self createObjectUrlFor: object.
	^ self httpPost: url contents: (ZnEntity json: (NeoJSONWriter toString: object properties))
