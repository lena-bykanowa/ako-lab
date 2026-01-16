.686
.model flat

public _nowy_exp

.code
_nowy_exp PROC
	push	ebp
	mov		ebp, esp
	
	fldz
	fld1		; ST(0)=1.0, ST(1)=0.0 (suma)
	mov		ecx, 20
	mov		eax, 1

petla:
	fadd	st(1), st(0) ; ST(0)=1.0, ST(1)=suma
	fmul	dword ptr [ebp+8] ; st(0)=1.0*x
	
	push	eax
	fild	dword ptr [esp]
	add		esp, 4

	; ST(0) = n, ST(1)=1.0*x, ST(2)=suma
	fdivp	st(1), st(0)
	inc		eax
	loop	petla

	fstp	st(0)
	pop		ebp
	ret
_nowy_exp ENDP
END