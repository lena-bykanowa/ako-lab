.686
.model flat

public _liczba_przeciwna
.data
	mnoznik		dd -1

.code
_liczba_przeciwna PROC
	push	ebp
	mov		ebp, esp
	push	ebx

	mov		ebx, [ebp+8]
	mov		eax, [ebx]
	imul	mnoznik
	mov		[ebx], eax

	pop		ebx
	pop		ebp
	ret
_liczba_przeciwna ENDP
END