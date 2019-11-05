actions-accounts
account: accountFields withContacts: contactFields where: where
	^ self firstOrNil: (self accounts: accountFields withContacts: contactFields where: where)