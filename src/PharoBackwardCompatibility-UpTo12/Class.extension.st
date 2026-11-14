Extension { #name : 'Class' }

{ #category : '*PharoBackwardCompatibility-UpTo12' }
Class >> undeclaredRegistry [
	"Answer the registry of the undeclared variables: the variables that are referenced but not defined in the environment. In Pharo 13 it replaces the global Undeclared."

	^ Undeclared
]
