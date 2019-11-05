private
firstOrNil: aSequenceableCollection
	aSequenceableCollection ifEmpty:[ ^ nil ].
	^ aSequenceableCollection first.