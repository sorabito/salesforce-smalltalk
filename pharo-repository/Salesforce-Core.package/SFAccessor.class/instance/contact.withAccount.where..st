actions-contacts
contact: contactFields withAccount: accountFields where: where
	^ self firstOrNil: (self contacts: contactFields withAccount: accountFields where: where)