Extension { #name : 'ZnUTF8Encoder' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnUTF8Encoder >> forwardOnStream: stream [
	"Move forward one character on a binary stream following the UTF8 encoding.."

	| firstByte |
	(firstByte := stream next) ifNil: [ self error: 'Cannot move forward once at the end' ].
	
	(firstByte bitAnd: 2r10000000) = 0 ifTrue: [ ^ self ]. "In UTF8, if a byte lead by 0xxxxxxx, it means it is an ascii character on 1 byte."

	(firstByte bitAnd: 2r11100000) = 2r11000000 ifTrue: [ ^ stream skip: 1 ]. "Byte leaded by 110xxxxx means we have a 2 bytes character. Skip one more byte."

	(firstByte bitAnd: 2r11110000) = 2r11100000 ifTrue: [ ^ stream skip: 2 ]. "Byte leaded by 1110xxxx means we have a 3 bytes character. Skip two more bytes."

	(firstByte bitAnd: 2r11111000) = 2r11110000 ifTrue: [ ^ stream skip: 3 ]. "Byte leaded by 11110xxx means we have a 4 bytes character. Skip three more bytes."
	
	self error: 'We should not get here. Maybe the position of your stream was in the middle of a character or the encoder it not the right one?'
]
