Extension { #name : #Behavior }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Behavior >> codeChangeAnnouncer [
	"Answer the announcer of the code changes: classes, methods and packages added, modified or removed. In Pharo 12 it replaces SystemAnnouncer uniqueInstance."

	^ SystemAnnouncer uniqueInstance
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Behavior >> includesTrait: aTrait [

	^ false
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Behavior >> packageOrganizer [

	^ self environment organization
]
