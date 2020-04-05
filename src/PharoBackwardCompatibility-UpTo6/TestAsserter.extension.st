Extension { #name : #TestAsserter }

{ #category : #'*PharoBackwardCompatibility-UpTo6' }
TestAsserter >> assert: actual identicalTo: expected [
	"Verify whether the actual and the expected are the same object (have the same object pointer so #== returns true)."
	
	^ self
		assert: expected == actual
		description: [self comparingIdentityStringBetween: actual and: expected]
]

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
