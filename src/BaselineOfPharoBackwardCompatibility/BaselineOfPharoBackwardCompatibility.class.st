"
I am a baseline to define the structure and dependencies of the PharoBackwardCompatibility project.
"
Class {
	#name : 'BaselineOfPharoBackwardCompatibility',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPharoBackwardCompatibility',
	#package : 'BaselineOfPharoBackwardCompatibility'
}

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'PharoBackwardCompatibility-Tests' ].

	spec for: (self pharoVersionsUpTo: 6) do: [ spec package: 'PharoBackwardCompatibility-UpTo6' ].

	spec for: (self pharoVersionsUpTo: 7) do: [ spec package: 'PharoBackwardCompatibility-UpTo7' ].

	spec for: (self pharoVersionsUpTo: 8) do: [ spec package: 'PharoBackwardCompatibility-UpTo8' ].

	spec for: (self pharoVersionsUpTo: 11) do: [ spec package: 'PharoBackwardCompatibility-UpTo11' ].

	spec for: #'pharo12.x' do: [ spec package: 'PharoBackwardCompatibility-12' ].

	spec for: (self pharoVersionsUpTo: 12) do: [ spec package: 'PharoBackwardCompatibility-UpTo12' ]
]

{ #category : 'baselines' }
BaselineOfPharoBackwardCompatibility >> pharoVersionsUpTo: aVersion [
	^ SystemVersion current major > aVersion
		ifTrue: [ #() ]
		ifFalse: [ {('pharo' , SystemVersion current major asString , '.x')} ]
]

{ #category : 'accessing' }
BaselineOfPharoBackwardCompatibility >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]
