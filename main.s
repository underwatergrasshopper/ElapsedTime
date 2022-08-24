LC0:
	.ascii "@main\0"
LC2:
	.ascii "%f\12\0"
_main:
LFB531:
	lea	ecx, [esp+4]
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	mov	ebp, esp
	push	edi
	push	esi
	lea	esi, [ebp-40]
	push	ebx
	push	ecx
	sub	esp, 88
	call	___main
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	lea	edx, [ebp-48]
	mov	ebx, DWORD PTR __imp__QueryPerformanceCounter@4
	mov	DWORD PTR [ebp-48], 0
	fldz
	mov	DWORD PTR [esp], edx
	fstp	QWORD PTR [ebp-32]
	mov	DWORD PTR [ebp-44], 0
	mov	DWORD PTR [ebp-40], 0
	mov	DWORD PTR [ebp-36], 0
	call	ebx
	mov	edi, DWORD PTR __imp__Sleep@4
	sub	esp, 4
	mov	DWORD PTR [esp], 400
	call	edi
	sub	esp, 4
	mov	DWORD PTR [esp], esi
	call	ebx
	mov	eax, DWORD PTR [ebp-40]
	mov	edx, DWORD PTR [ebp-36]
	sub	esp, 4
	sub	eax, DWORD PTR [ebp-48]
	sbb	edx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-68], edx
	mov	DWORD PTR [ebp-72], eax
	fild	QWORD PTR [ebp-72]
	fild	QWORD PTR __ZN11ElapsedTime7sm_freqE
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	fdivp	st(1), st
	fst	QWORD PTR [ebp-32]
	fstp	QWORD PTR [esp+4]
	call	_printf
	lea	edx, [ebp-48]
	mov	DWORD PTR [esp], edx
	call	ebx
	mov	eax, DWORD PTR [ebp-48]
	mov	edx, DWORD PTR [ebp-44]
	mov	ecx, 2
	fldz
	mov	DWORD PTR [ebp-84], ebx
	sub	esp, 4
	mov	DWORD PTR [ebp-40], eax
	mov	DWORD PTR [ebp-36], edx
	fstp	QWORD PTR [ebp-32]
	mov	DWORD PTR [ebp-72], ecx
L2:
	mov	DWORD PTR [esp], 400
	call	edi
	mov	eax, DWORD PTR [ebp-84]
	sub	esp, 4
	mov	DWORD PTR [esp], esi
	call	eax
	mov	eax, DWORD PTR [ebp-40]
	mov	edx, DWORD PTR [ebp-36]
	sub	esp, 4
	mov	ecx, eax
	mov	ebx, edx
	sub	ecx, DWORD PTR [ebp-48]
	sbb	ebx, DWORD PTR [ebp-44]
	mov	DWORD PTR [ebp-80], ecx
	mov	DWORD PTR [ebp-76], ebx
	fild	QWORD PTR [ebp-80]
	fild	QWORD PTR __ZN11ElapsedTime7sm_freqE
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	mov	DWORD PTR [ebp-48], eax
	mov	DWORD PTR [ebp-44], edx
	fdivp	st(1), st
	fst	QWORD PTR [ebp-32]
	fstp	QWORD PTR [esp+4]
	call	_printf
	cmp	DWORD PTR [ebp-72], 1
	je	L6
	mov	DWORD PTR [ebp-72], 1
	jmp	L2
L6:
	lea	esp, [ebp-16]
	xor	eax, eax
	pop	ecx
	pop	ebx
	pop	esi
	pop	edi
	pop	ebp
	lea	esp, [ecx-4]
	ret
LFE531:
