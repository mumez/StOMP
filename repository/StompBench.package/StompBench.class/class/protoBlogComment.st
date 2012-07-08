factories helper
protoBlogComment
	| comment |
	comment := StompMockComment new id: self random.
	comment content: (self randomPhraseSized: 100).
	comment accepted: false.
	comment count: self random.
	comment author: (StompMockAuthor authors at: #yama).
	comment creationDate: (StompPortableUtil default timestampFromNanoseconds: 3485089041421000000).
	^ comment