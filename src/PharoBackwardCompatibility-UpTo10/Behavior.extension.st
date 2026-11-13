Extension { #name : #Behavior }

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
Behavior >> parseTreeForSelector: aSymbol [

	^ (self compiledMethodAt: aSymbol) parseTree
]
