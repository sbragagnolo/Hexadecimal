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

{ #category : #'*Hexadecimal' }
String >> writeHeadlessHexadecimal [
	^  self read0xHexadecimal writeHeadlessHexadecimal 
]

{ #category : #'*Hexadecimal' }
String >> writeHeadlessHexadecimal: anInteger [
	^ self read0xHexadecimal writeHeadlessHexadecimal: anInteger
]
