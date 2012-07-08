factories
searchResult02
	"self searchResult02"
	| resp header body docs ids highlights |
	resp := StompMockSearchResponse new.
	header := self protoSearchHeader.
	body := self protoSearchBody.
	docs := OrderedCollection new.
	ids := 1 to: 50.
	ids do: [:eachId | docs add: (self protoSearchDoc id: eachId printString)].
	body docs: docs.
	highlights := Dictionary new.
	ids do: [:eachId |
		highlights at: eachId printString put: self protoSearchHighlight.
	].
	resp header: header; body: body; highlightings: highlights.
	^resp