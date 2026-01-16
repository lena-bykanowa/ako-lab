.686
.model flat

public _srednia_harm

.data

	jeden			dd 1.0

.code
_srednia_harm PROC

	push	ebp
	mov		ebp, esp

	; [ebp+8] - adres tablicy float*
	; [ebp+12] - n (unsigned int)

	mov		edx, [ebp+8]  ; edx - adres pocz¹tku tablicy
	mov		ecx, [ebp+12] ; ecx = n

	fldz		; ST(0) = 0.0

petla:
	fld		jeden	; ST(0) = 1.0, ST(1) = 0.0
	fld		dword ptr [edx]	; ST(0)=x1, ST(1)=1.0, ST(2)=0.0
	fdivp	st(1), st(0) ; ST(0)=1.0/x1, ST(1)=0.0
	faddp	st(1), st(0) ; ST(0)=suma

	add		edx, 4
	loop	petla

; koniec pêtli
	fild	dword ptr [ebp+12]  ; za³aduj n jako liczbê ca³kowit¹ i skonwertuj na float
	; ST(0)=n, ST(1)=suma
	fdiv	st(0), st(1)
	fstp	st(1)

koniec:
	pop		ebp
	ret

_srednia_harm ENDP
END