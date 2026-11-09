Extension { #name : 'Object' }

{ #category : '*PharoBackwardCompatibility-UpTo14' }
Object >> newLineTrace [

	self newLineTrace: self
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
Object >> newLineTrace: aString [
	"Log the argument. Use self newLineTrace: instead of Transcript newLine; show: "

	Transcript cr.
	self trace: aString
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
Object >> traceNewLine [

	self traceNewLine: self
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
Object >> traceNewLine: anObject [
	"Log the argument. Use self traceNewLine: 'something' instead of Transcript show: 'something'  ; newLine "

	self trace: anObject.
	Transcript cr
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
Object >> traceNewLineTab: anObject [
	"Log the argument. Use self traceNewLineTab: 'something' instead of Transcript show: 'something'  ; newLine ; tab "

	self trace: anObject.
	Transcript
		cr;
		tab
]
