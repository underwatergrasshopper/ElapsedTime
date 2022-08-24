__GLOBAL__sub_I__ZN11ElapsedTime7sm_freqE:
LFB506:
	sub	esp, 44
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+24], 0
	mov	DWORD PTR [esp+28], 0
	mov	DWORD PTR [esp], eax
	call	[DWORD PTR __imp__QueryPerformanceFrequency@4]
	sub	esp, 4
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR __ZN11ElapsedTime7sm_freqE, eax
	mov	DWORD PTR __ZN11ElapsedTime7sm_freqE+4, edx
	add	esp, 44
	ret
LFE506:
	.long	__GLOBAL__sub_I__ZN11ElapsedTime7sm_freqE
__ZN11ElapsedTime7sm_freqE:
	.space 8
