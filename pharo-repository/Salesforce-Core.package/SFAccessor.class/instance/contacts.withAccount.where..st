actions-contacts
contacts: contactFields withAccount: accountFields where: where
	^ self retrieveObjectsByBlock: [ :offset | self selectModel: SFContact fields: contactFields nestedModel: SFAccount nestedFields: accountFields where: where limit: self defaultRetrieveCount offset: offset ]
		for: (self countContactWhere: where)
