factories
searchResult01
	"self searchResult01"
	| resp header body docs highlights |
	resp := StompMockSearchResponse new.
	header := self protoSearchHeader.
	body := self protoSearchBody.
	docs := OrderedCollection new.
	docs add: (self protoSearchDoc).
	docs add: (self protoSearchDoc).
	docs add: (self protoSearchDoc).
	body docs: docs.
	highlights := Dictionary new.
	highlights at: 'MA147LL/A' put: self protoSearchHighlight.
	highlights at: 'MA147LL/B' put: self protoSearchHighlight.
	highlights at: 'MA147LL/C' put: self protoSearchHighlight.
	resp header: header; body: body; highlightings: highlights.
	^resp