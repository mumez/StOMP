exceptionDescription
defaultAction
	self class suppressTranscriptLogging ifFalse: [Transcript cr; show: '#warning# ' , self description].
	self resume