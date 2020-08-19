actions
objectsFromQuery: query
	| rawResult rawRecords |
	rawResult := self rawQuery: query.
	
	rawRecords := rawResult at: #records ifAbsent: [ {  } ].
	
	^ self objectsFromRawRecords: rawRecords.