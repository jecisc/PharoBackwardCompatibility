Extension { #name : 'ZnCharacterEncoder' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnCharacterEncoder >> forwardOnStream: aStream [
	"I should move from 1 character forward on the stream. The stream is over a ByteArray."

	self subclassResponsibility
]

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnCharacterEncoder >> numberOfCharactersFrom: bytes [
	"Return the number of characters represented by a byte array. We avoid creating code points, characters or string for speed reasons. Instead we use #forwardOnStream: that will just skip the bytes correspondin to one character."

	| byteStream count |
	byteStream := bytes readStream.
	count := 0.
	[ byteStream atEnd ] whileFalse: [
			count := count + 1.
			self forwardOnStream: byteStream ].
	^ count
]
