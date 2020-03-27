Extension { #name : #TestAsserter }

{ #category : #'*PharoBackwardCompatibility-UpTo6' }
TestAsserter >> deny: actual equals: expected [
	"This method raises an AssertionFailure if actual is equals (using #= message) to expected.
	 Else it does nothing and execution continues.
	"
	^ self
		deny: expected = actual
		description: [self unexpectedEqualityStringBetween: actual and: expected]
]

{ #category : #'*PharoBackwardCompatibility-UpTo6' }
TestAsserter >> deny: actual identicalTo: expected [
	"Verify whether the actual and the expected are NOT the same object (have the same object pointer so #== returns false)."
	^ self
		deny: expected == actual
		description: [self unexpectedIdentityEqualityStringBetween: actual and: expected]
]
