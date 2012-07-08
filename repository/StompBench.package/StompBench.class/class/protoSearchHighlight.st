factories helper
protoSearchHighlight
	| highlight1 |
	highlight1 := StompMockSearchHighlight new.
	highlight1 name: (Array with: (self randomPhraseSized: 50)).
	highlight1 features: (Array with: (self randomPhraseSized: 70)).
	^ highlight1