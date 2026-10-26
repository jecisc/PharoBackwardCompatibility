Extension { #name : 'Context' }

{ #category : '*PharoBackwardCompatibility-UpTo13' }
Context >> printStackTraceOn: aStream [
	"Print the stack trace starting from this context up to the bottom of the stack."

	self withSendersDo: [ :context |
		context printOn: aStream.
		aStream cr ]
]

{ #category : '*PharoBackwardCompatibility-UpTo13' }
Context >> stackTraceString [
	"Return the stack trace starting from this context up to the bottom of the stack."

	^ String streamContents: [ :stream | self printStackTraceOn: stream ]
]

{ #category : '*PharoBackwardCompatibility-UpTo13' }
Context >> temporaryVariableNames [

	^ self tempNames
]

{ #category : '*PharoBackwardCompatibility-UpTo13' }
Context >> withSendersDo: aBlock [

	| current |
	current := self.
	[ current notNil ] whileTrue: [
		aBlock value: current.
		current := current sender ]
]
