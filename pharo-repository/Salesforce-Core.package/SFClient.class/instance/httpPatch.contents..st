http-method
httpPatch: aUri contents: entity
	| request |
	request := self createRequest.
	request method: #PATCH.
	request url: aUri.
	request entity: entity.
	self client request: request.
	client execute.
	^ client response