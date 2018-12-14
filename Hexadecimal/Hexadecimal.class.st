Class {
	#name : #Hexadecimal,
	#superclass : #Object,
	#category : #Hexadecimal
}

{ #category : #'as yet unclassified' }
Hexadecimal >> chopHeaders: aString [
	^ (aString copyReplaceAll: '0x' with: '0') copyReplaceAll: '16r' with: ''
]

{ #category : #'as yet unclassified' }
Hexadecimal >> ensureIsNumber: anObject [
	anObject isNumber
		ifFalse: [ self error: 'The result could not be a number. Please check your parameters' ]
]

{ #category : #'as yet unclassified' }
Hexadecimal >> readHexadecimal: aStringOrNumber [
	| returning |
	returning := aStringOrNumber isString
		ifTrue: [ (NumberParser on: (self chopHeaders: aStringOrNumber)) nextNumberBase: 16 ]
		ifFalse: [ aStringOrNumber ].
	self ensureIsNumber: returning.
	^ returning
]

{ #category : #'as yet unclassified' }
Hexadecimal >> write0xHexadecimal: aNumber [
	^ self write0xHexadecimal: aNumber padding: 0
]

{ #category : #'as yet unclassified' }
Hexadecimal >> write0xHexadecimal: aNumber padding: aPadding [
	^ self writeHexadecimal: aNumber headingWith: '0x' padding: aPadding
]

{ #category : #'as yet unclassified' }
Hexadecimal >> writeHexadecimal: aNumber headingWith: aHeader padding: aPadding [
	^ (aNumber hex asString copyReplaceAll: '16r' with: aHeader) asLowercase
		padLeftTo: aPadding
		with: $0
]
