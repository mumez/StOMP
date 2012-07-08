factories helper
protoSearchHeader
	| header params |
	header := StompMockSearchHeader new.
	header status: 0.
	header time: 10.
	params := Dictionary new.
	params at: 'wt' put: 'json'.
	params at: 'indent' put: 'on'.
	params at: 'hl' put: true.
	header params: params.
	^ header