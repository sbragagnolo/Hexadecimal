Extension { #name : #Character }

{ #category : #'*Hexadecimal' }
Character >> write0xHexadecimal [
	^ self asciiValue write0xHexadecimal
]
