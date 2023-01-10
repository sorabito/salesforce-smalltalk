actions
deleteObject: object
	| url |
	url := self updateObjectUrlFor: object.
	^ self httpDelete: url.
	