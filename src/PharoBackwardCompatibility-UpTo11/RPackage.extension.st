Extension { #name : #RPackage }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> isUndefined [
	"Pharo 12 files a class that belongs to no package in an undefined package. Before it, every package is defined."

	^ false
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> tagNames [

	^ self classTags collect: [ :tag | tag name ]
]
