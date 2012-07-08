*Stomp-Core-instance creation
stompFromBytes: rawBytes
	"For bits object"
	"override - if nessesary"
	^StompPortableUtil default bytes: rawBytes intoOf: self. 
	