.686
.XMM
.model flat

public _int2float

.code

_int2float PROC
	push	ebp
	mov		ebp, esp

	mov		esi, [ebp+8] ; adres tablicy int
	mov		edi, [ebp+12] ; adres tablicy zmiennoprzecinkowej

	cvtpi2ps	xmm5, qword PTR [esi];
	movups	[edi], xmm5
	
	pop ebp

	ret
_int2float ENDP
END
