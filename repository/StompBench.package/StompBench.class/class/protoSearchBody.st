factories helper
protoSearchBody
	| body |
	body := StompMockSearchBody new.
	body numFounds: 3.
	body start: 0.
	^ body