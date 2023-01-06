instance creation
from: dictionary 
	| object |
	object := self new.
	dictionary associationsDo: [ :assoc |
		object at: assoc key put: assoc value.
	].
	^ object.
