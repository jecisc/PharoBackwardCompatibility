Extension { #name : #BlockClosure }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
BlockClosure >> valueWithinMilliseconds: milliseconds onTimeout: timeoutBlock [
	"Evaluate the receiver.
	If the evaluation does not complete in less than milliseconds evaluate the timeoutBlock instead"

	^ self valueWithin: milliseconds milliSeconds onTimeout: timeoutBlock
]
