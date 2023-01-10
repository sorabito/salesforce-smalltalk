actions-contacts
contact: fields where: where
	^self retrieveObjectByBlock: [ :offsetId | self selectObjectsFields: fields model: SFContact where: where limit: self defaultRetrieveCount offsetId: nil ]