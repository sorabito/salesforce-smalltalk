private
retrieveObjectsByBlock: aBlock
	| objects lastOffsetId offsetId retrieveCount |
	objects := OrderedCollection new.
	lastOffsetId := nil.
	offsetId := nil.
	retrieveCount := 0.
	
	[ | queryResult |
		queryResult := (aBlock cull: offsetId).
		objects addAll: queryResult.
		queryResult lastOrNil ifNotNil: [ 
			lastOffsetId := offsetId.
			offsetId := queryResult last at: 'Id'.
		].
		retrieveCount := queryResult size.
	] doWhileTrue: [ retrieveCount ~= 0 and: [lastOffsetId ~= offsetId ] ].
	^ objects.