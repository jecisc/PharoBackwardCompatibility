Extension { #name : #RPackage }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> ensureTag: aTag [
	"Answer the tag of that name, or a tag object, adding it first when I do not have it yet. No tag, or Uncategorized as Pharo 12 names it, is the tag named after me, where Pharo 11 files the classes of a package that have none."

	| tagName |
	tagName := aTag isString
		           ifTrue: [ aTag ]
		           ifFalse: [ aTag ifNotNil: [ aTag name ] ].
	(tagName isNil or: [
		 tagName isEmpty or: [ tagName = #Uncategorized ] ]) ifTrue: [
		^ self addClassTag: self name ].
	^ self addClassTag: tagName
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> hasTag: aTag [
	"Takes a package tag or a package tag name as parameter and return true if I include this package tag. Uncategorized, as Pharo 12 names the tag of the classes that have none, is the tag named after me."

	| tagName |
	tagName := aTag isString
		           ifTrue: [ aTag ]
		           ifFalse: [ aTag name ].
	tagName = #Uncategorized ifTrue: [ tagName := self name ].
	^ self includesClassTagNamed: tagName
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> isUndefined [
	"Pharo 12 files a class that belongs to no package in an undefined package. Before it, every package is defined."

	^ false
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
RPackage >> tagNames [
	"Pharo 12 names the tag of the classes that have none Uncategorized; before it, that tag is named after the package."

	^ self classTags collect: [ :tag |
		  tag name = self name
			  ifTrue: [ #Uncategorized ]
			  ifFalse: [ tag name ] ]
]
