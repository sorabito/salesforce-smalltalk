actions
selectObjectsFields: fields model: model limit: limit offsetId: offsetId
	| query |
	
	offsetId
		ifNil: [ query := 'SELECT {1} FROM {2} ORDER BY Id LIMIT {3}' format: { ',' join: fields. model modelName. limit }. ]
		ifNotNil: [ query := 'SELECT {1} FROM {2} WHERE Id > ''{3}'' ORDER BY Id LIMIT {4}' format: { ',' join: fields. model modelName. offsetId. limit }. ].

	^ self objectsFromQuery: query
	