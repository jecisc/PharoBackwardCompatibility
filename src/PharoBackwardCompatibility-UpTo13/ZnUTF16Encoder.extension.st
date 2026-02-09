Extension { #name : 'ZnUTF16Encoder' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
ZnUTF16Encoder >> forwardOnStream: aStream [
	"Move the stream forward by one Unicode character encoded in UTF‑16."

	| firstUnit lowByte highByte |
	
	"Read the first 16‑bit code unit because character are on 2 or 4 bytes."
	lowByte := aStream next ifNil: [ self error: 'Cannot move forward once at the end' ].
	highByte := aStream next ifNil: [ self error: 'Cannot move forward once at the end' ].

	firstUnit := self isBigEndian
		             ifTrue: [  (lowByte bitShift: 8) + highByte ] "BE: high byte first"
		             ifFalse: [ (highByte bitShift: 8) + lowByte ]. "LE: low byte first"
		
	"If we have a surrogate code point, we need to read two more bytes."	
	(self isSurrogateCodePoint: firstUnit) ifTrue: [
			lowByte := aStream next ifNil: [ self error: 'Last character is truncated' ].
			highByte := aStream next ifNil: [ self error: 'Last character is truncated' ] ]
]
