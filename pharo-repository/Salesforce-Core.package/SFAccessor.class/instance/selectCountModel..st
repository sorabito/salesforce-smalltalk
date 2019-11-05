actions
selectCountModel: model
	| query |
	
	query := 'SELECT COUNT(Id) FROM {1}' format: { model modelName }.

	^ (self objectsFromQuery: query) first at: #expr0