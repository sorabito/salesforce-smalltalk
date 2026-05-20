actions
login
	| entity uri request |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity at: 'grant_type' put: 'password'.
	entity at: 'client_id' put: self settings clientId.
	entity at: 'client_secret' put: self settings clientSecret.
	entity at: 'username' put: self settings username.
	entity at: 'password' put: self settings password , self settings securityToken.
	uri := self oauthTokenUri.
	request := ZnRequest empty.
	request method: #POST.
	request url: uri.
	request entity: entity.
	self client request: request.
	self client execute.
	self readFromOAuthLoginResponse: self client response.