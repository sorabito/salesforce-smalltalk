actions
selectObjectsFields: fields model: model limit: limit offset: offset
	| query |
	
	query := 'SELECT {1} FROM {2} LIMIT {3} OFFSET {4}' format: { ',' join: fields. model modelName. limit. offset }.

	^ self objectsFromQuery: query
	