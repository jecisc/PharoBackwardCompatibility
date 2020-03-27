Extension { #name : #Boolean }

{ #category : #'*PharoBackwardCompatibility-UpTo7' }
Boolean >> threeWayCompareTo: anotherObject [
	^ self asBit threeWayCompareTo: anotherObject asBit
]
