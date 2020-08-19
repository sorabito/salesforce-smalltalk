actions
selectObjectsFields: fields model: model where: where limit: limit offsetId: offsetId
	| query |
	
	offsetId
		ifNil: [ query := 'SELECT {1} FROM {2} WHERE {3} ORDER BY Id LIMIT {4}' format: { ',' join: fields. model modelName. where. limit }. ]
		ifNotNil: [ query := 'SELECT {1} FROM {2} WHERE {3} AND Id > ''{4}'' ORDER BY Id LIMIT {5}' format: { ',' join: fields. model modelName. where. offsetId. limit }. ].

	^ self objectsFromQuery: query