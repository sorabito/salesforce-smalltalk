actions-leads
leads: fields where: where
	^ self retrieveObjectsByBlock: [ :offsetId | self selectObjectsFields: fields model: SFLead where: where limit: self defaultRetrieveCount offsetId: offsetId ]