factories helper
protoSearchDoc
	| cats1 doc1 features1 |
	doc1 := StompMockSearchDocument new.
	doc1 id: 'MA147LL/A'.
	doc1 name: '60 GB iPod with Video Playback Black'.
	doc1 price: 399.0.
	doc1 popularity: self random.
	doc1 inStock: true.
	doc1 timestamp: (StompPortableUtil default timestampFromNanoseconds: 3485089041421000000).
	cats1 := Array with: 'electoronics' with: 'music'.
	doc1 categories: cats1.
	features1 := OrderedCollection new.
	features1 add: (self randomPhraseSized: 30).
	features1 add: (self randomPhraseSized: 70).
	features1 add: (self randomPhraseSized: 50).
	doc1 features: features1.
	^ doc1