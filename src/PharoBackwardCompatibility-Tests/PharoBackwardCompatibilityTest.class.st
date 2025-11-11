Class {
	#name : 'PharoBackwardCompatibilityTest',
	#superclass : 'TestCase',
	#category : 'PharoBackwardCompatibility-Tests',
	#package : 'PharoBackwardCompatibility-Tests'
}

{ #category : 'tests' }
PharoBackwardCompatibilityTest >> testProjectIsFullLoaded [
	"This is dumb but SmalltalkCI has a bug not notifying if a project cannot load if we enable the 'No fail if 0 test' feature"

	self assert: true
]
