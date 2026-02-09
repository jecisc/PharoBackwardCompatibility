Extension { #name : 'ZnSimplifiedByteEncoder' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnSimplifiedByteEncoder >> forwardOnStream: aStream [
	"I should move from 1 character forward on the stream. The stream is over a ByteArray."

	aStream next
]
