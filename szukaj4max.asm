.686
.model flat

public _szukaj4_max

.code

_szukaj4_max PROC
	push	ebp
	mov		ebp, esp

	mov		eax, [ebp+8]	; liczba a
	cmp		eax, [ebp+12]	; porownanie a i b
	jge		a_c		; skok gdy a >=b

; przypadek a < b
b_c:
	mov		eax, [ebp+12]
	cmp		eax, [ebp+16]	; porownanie b i c
	jge		b_d		; 

c_d:
	mov		eax, [ebp+16]
	cmp		eax, [ebp+20]
	jge		wypisz_c

wypisz_d:
	mov		eax, [ebp+20]	; d jest najwieksza
	jmp		zakoncz

a_c:
	cmp		eax, [ebp+16]	; porownanie a i c
	jge		a_d				; skocz do porownania a i d
	jmp		c_d

b_d:
	cmp		eax, [ebp+20]	; porownanie b i d
	jge		wypisz_b

wypisz_b:
	mov		eax, [ebp+12]
	jmp		zakoncz

a_d:
	cmp		eax, [ebp+20]	; porownanie a i d
	jge		wypisz_d		; jesli d wieksze
	jmp		wypisz_a		; jesli a wieksze


wypisz_a:
	mov		eax, [ebp+8]
	jmp		zakoncz

wypisz_c:
	mov		eax, [ebp+16]
	jmp		zakoncz

zakoncz:
	pop		ebp
	ret

_szukaj4_max ENDP
END