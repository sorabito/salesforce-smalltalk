private
retrieveObjectsByBlock: aBlock for: count
	| objects |
	objects := OrderedCollection new.
	((count / self defaultRetrieveCount) asForcedInteger + 1) timesRepeat: [
		objects addAll: (aBlock cull: objects size).
	].
	^ objects.