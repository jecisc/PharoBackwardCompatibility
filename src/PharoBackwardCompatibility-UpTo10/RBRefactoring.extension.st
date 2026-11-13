Extension { #name : #RBRefactoring }

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
RBRefactoring >> performChanges [

	RBRefactoryChangeManager instance
		performChange: self changes;
		addUndoPointer: RBRefactoryChangeManager nextCounter
]
