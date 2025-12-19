.686
.model flat

public _plus_jeden

.code
_plus_jeden PROC
	push	ebp			; zapisanie wartoœci EBP na stosie
	mov		ebp, esp	; kopiowanie zawartoœci ESP do EBP
	push	ebx			; przechowanie zawartoœci ebx
; wpisanie do rejestru EBX adresu zmiennej zdefiniowanej
; w kodzie w jêzyku C
	mov		ebx, [ebp+8]
	mov		eax, [ebx]  ; odczytanie wartoœci zmiennej
	inc		eax
	mov		[ebx], eax

	pop		ebx
	pop		ebp
	ret
_plus_jeden	ENDP
END