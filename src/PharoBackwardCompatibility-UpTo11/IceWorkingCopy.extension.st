Extension { #name : #IceWorkingCopy }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
IceWorkingCopy >> packageNamed: aString ifAbsent: aBlock [

	^ self packagesDictionary at: aString ifAbsent: aBlock
]
