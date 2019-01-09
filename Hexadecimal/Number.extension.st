Extension { #name : #Number }

{ #category : #'*Hexadecimal' }
Number >> read0xHexadecimal [
	^ self
]

{ #category : #'*Hexadecimal' }
Number >> write0xHexadecimal [
	^ Hexadecimal new write0xHexadecimal: self
]

{ #category : #'*Hexadecimal' }
Number >> write0xHexadecimal: aLength [
	^ Hexadecimal new write0xHexadecimal: self padding: aLength
]

{ #category : #'*Hexadecimal' }
Number >> writeHeadlessHexadecimal [
	^ Hexadecimal new writeHeadlessHexadecimal: self
]

{ #category : #'*Hexadecimal' }
Number >> writeHeadlessHexadecimal: aPadding [
	^ Hexadecimal new writeHeadlessHexadecimal: self padding: aPadding
]
