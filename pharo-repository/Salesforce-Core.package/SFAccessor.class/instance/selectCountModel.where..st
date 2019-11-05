actions
selectCountModel: model where: where
	| query |
	
	query := 'SELECT COUNT(Id) FROM {1} WHERE {2}' format: { model modelName. where }.

	^ (self objectsFromQuery: query) first at: #expr0