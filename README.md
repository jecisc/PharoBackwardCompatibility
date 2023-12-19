# Pharo Backward Compatibility

Chanel is a code cleaner for Pharo. 

- [Pharo Backward Compatibility](#pharo-backward-compatibility)
	- [Installation](#installation)
	- [Documentation](#documentation)
		- [Up to Pharo 6](#up-to-pharo-6)
		- [Up to Pharo 7](#up-to-pharo-7)
		- [Up to Pharo 8](#up-to-pharo-8)
		- [Up to Pharo 11](#up-to-pharo-11)
	- [Version management](#version-management)
	- [Smalltalk versions compatibility](#smalltalk-versions-compatibility)
	- [Contact](#contact)

## Installation

To install the project in your Pharo image execute:

```Smalltalk
    Metacello new
    	githubUser: 'jecisc' project: 'PharoBackwardCompatibility' commitish: 'v1.x.x' path: 'src';
    	baseline: 'PharoBackwardCompatibility';
    	load
```

To add it to your baseline:

```Smalltalk
    spec
    	baseline: 'PharoBackwardCompatibility'
    	with: [ spec repository: 'github://jecisc/PharoBackwardCompatibility:v1.x.x/src' ]
```

Note that you can replace the #v1.x.x by another branch such as #development or a tag such as #v1.0.0, #v1.? or #v1.1.?.

## Documentation

Pharo backward compatibility brings multiple features to different versions of Pharo.

### Up to Pharo 6

This brings mutiple features to Pharo <= 6.

- `TestAsserter>>#assert:identicalTo:`  allows one to assert that a value is identical to another (pointer identity equivalent to the use of `==`).
- `TestAsserter>>#deny:equals:` allows one to assert that a value is not equal to another.
- `TestAsserter>>#deny:identicalTo:`  allows one to assert that a value is not identical to another.

### Up to Pharo 7

This brings mutiple features to Pharo <= 7.

- `EpMonitor class>>#disableDuring:` allows one to disable Epicea during the execution of a block.
- `Behavior>>#compiledMethodAt:ifPresent:` allows one to act if a method is present in a class.
- `Boolean>>#threeWayCompareTo:` allows one to compare two booleans. This is use for sort function. It allows on to write: `#(1 2 3 4) sort: #even ascending`.
- `TestAsserter>>#assertEmpty:` allows one to assert that a collection is empty.
- `TestAsserter>>#denyEmpty:` allows one to assert that a collection is not empty.
- `SequenceableCollection>>#bind:` extracts items from the receiving sequenceable collection and use them as argumeents of a block.

### Up to Pharo 8

This brings mutiple features to Pharo <= 8.

- `AbstractFileReference>>#ifExists:` allows one to execute a block only if a file exists.
- `AbstractFileReference>>#ifAbsent:` allows one to execute a block only if a file does not exists.
- `AbstractFileReference>>#ifExists:ifAbsent:` allows one to execute a different code if a file exist or not.

### Up to Pharo 11

This brings mutiple features to Pharo <= 11.

- `Object>>#packageOrganizer` and `Behavior>>#packageOrganizer` allows to access the package organizer of a class. This replaces `RPackage default` or `RpackageOrgarizer default` or also the global variable `SystemOrganization` that are all deprecated in Pharo 12.
- `RPackageOrganizer>>#ensurePackage:` allows one to ensure that a package is created in the organizer by providing a name or a package.
- `Class>>#packageTag`/`Metaclass>>#packageTag` returns an instance of `RPackageTag` corresponding to the tag of the class.
- `ShiftClassBuilder>>#traits:` allows to set the trait composition of a class builder with the same API than the fluid syntax (In P12 FluidClassBuilder and ShiftClassBuilder are merged).
- `ShiftClassBuilder>>#tag:` allows to set the tag of a class. This will happend the tag to the category name with a dash because P11 is not able to really manipulate the tags but this should make the API compatible between P12 and P11. Note that this method should be called after #package: or #category: since it happens the tag to what is already set. 
- `CompiledMethod>>protocolName` allows one to get the protocol name of a method. Up to P11 #protocol was returning the name, but in P12 it returns the real protocol object.

## Version management 

This project use semantic versioning to define the releases. This means that each stable release of the project will be assigned a version number of the form `vX.Y.Z`. 

- **X** defines the major version number
- **Y** defines the minor version number 
- **Z** defines the patch version number

When a release contains only bug fixes, the patch number increases. When the release contains new features that are backward compatible, the minor version increases. When the release contains breaking changes, the major version increases. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Smalltalk versions compatibility

| Version 	| Compatible Pharo versions 		|
|-------------	|---------------------------	|
| 1.x.x       	| Pharo 61, 70, 80, 90, 10, 11, 12				|

## Contact

If you have any questions or problems do not hesitate to open an issue or contact cyril (a) ferlicot.fr
