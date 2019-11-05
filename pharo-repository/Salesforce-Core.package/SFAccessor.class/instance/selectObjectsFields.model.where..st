actions
selectObjectsFields: fields model: model where: where
	| query |
	
	query := 'SELECT {1} FROM {2} WHERE {3}' format: { ',' join: fields. model modelName. where }.

	^ self objectsFromQuery: query