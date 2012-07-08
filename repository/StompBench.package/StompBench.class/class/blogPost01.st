factories
blogPost01
	"self blogPost01"
	| blogPost |
	blogPost := StompMockBlogPost new.
	blogPost id: 1;
	 title: 'My Smalltalk';
	 status: 0;
 	content: (self randomPhraseSized: 5000);
 	creationDate: (StompPortableUtil default timestampFromNanoseconds: 3465089041421000000);
	modifiedDate: (StompPortableUtil default timestampFromNanoseconds: 3465089112345000000);
 	author: (StompMockAuthor authors at: #ume);
 	categories: (Array with: (StompMockCategory categories at: #life));
 	tags: (Array with: (StompMockTag tags at: #visualworks) with: (StompMockTag tags at: #trans)).
	^ blogPost
 