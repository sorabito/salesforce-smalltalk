private-uri
updateObjectUrlFor: anObject
	| url |
	url := self baseObjectUrlFor: anObject.
	anObject id ifNotEmpty: [ url := url / anObject id ].
	^ url