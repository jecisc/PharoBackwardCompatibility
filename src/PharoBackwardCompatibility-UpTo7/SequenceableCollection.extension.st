Extension { #name : #SequenceableCollection }

{ #category : #'*PharoBackwardCompatibility-UpTo7' }
SequenceableCollection >> bind: aBlock [ 

	"Extract items from the receiver and use them as argumeents of aBlock. Signal an error
	(ArgumentsCountMismatch) when the arguments count of aBlock does not match the receiver size." 
	
	"(#(1 2 3) bind: [ :first :second :third | first + second + third ]) >>> 6"

	^ aBlock valueWithArguments: self
]
