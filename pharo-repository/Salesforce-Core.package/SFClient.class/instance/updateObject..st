actions
updateObject: object
	| url |
	url := self updateObjectUrlFor: object.
	^ self httpPost: url contents: (ZnEntity json: (NeoJSONWriter toString: object properties))