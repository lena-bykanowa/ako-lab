.686
.XMM
.model flat

public _suma
.code
_suma PROC
	push	ebp
	mov		ebp, esp

	mov		eax, [ebp+8] ; adres A
	mov		edx, [ebp+12] ; adres B
	mov		ecx, [ebp+16] ; adres wynik

	movdqu xmm0, [eax]
	movdqu xmm1, [edx]

	paddsb xmm0, xmm1

	movdqu [ecx], xmm0

	pop ebp
	ret
_suma ENDP
END