private
retrieveObjectByBlock: aBlock
	| offsetId queryResult |
	offsetId := nil.
	queryResult := (aBlock cull: offsetId).
	^ self firstOrNil: queryResult.