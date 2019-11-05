actions
selectObjectsFields: fields model: model where: where limit: limit offset: offset
	| query |
	
	query := 'SELECT {1} FROM {2} WHERE {3} LIMIT {4} OFFSET {5}' format: { ',' join: fields. model modelName. where. limit. offset }.

	^ self objectsFromQuery: query