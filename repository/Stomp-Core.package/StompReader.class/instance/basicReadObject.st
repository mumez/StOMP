private
basicReadObject
	"Never remembering"
	^(MpDecoder on: self readStream) readObject