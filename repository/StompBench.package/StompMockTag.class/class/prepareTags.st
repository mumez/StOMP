preparing
prepareTags
	tags := Dictionary new.
	tags at: #lang put: (StompMockTag new id: 1; name: 'lang').
	tags at: #trans put: (StompMockTag new id: 2; name: 'trans').
	tags at: #smalltalk put: (StompMockTag new id: 11; name: 'smalltalk'; parent: (tags at: #lang)).
	tags at: #visualworks put: (StompMockTag new id: 111; name: 'visualworks'; parent: (tags at: #smalltalk)).
	tags at: #ruby put: (StompMockTag new id: 12; name: 'ruby'; parent: (tags at: #lang)).
	tags at: #erlang put: (StompMockTag new id: 13; name: 'erlang'; parent: (tags at: #lang)).
	tags at: #trans put: (StompMockTag new id: 21; name: 'Japanese').
	tags at: #trans put: (StompMockTag new id: 22; name: 'English').
	
	^tags