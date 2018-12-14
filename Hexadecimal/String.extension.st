Extension { #name : #String }

{ #category : #'*Hexadecimal' }
String >> read0xHexadecimal [
	^ Hexadecimal new readHexadecimal: self
]

{ #category : #'*Hexadecimal' }
String >> write0xHexadecimal [
	^  self read0xHexadecimal write0xHexadecimal
]

{ #category : #'*Hexadecimal' }
String >> write0xHexadecimal: anInteger [
	^ self read0xHexadecimal write0xHexadecimal: anInteger
]
