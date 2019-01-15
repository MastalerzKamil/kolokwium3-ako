.686
.model flat
public _main

.data
b	dd	 0c8h
.code
_main PROC
	mul b
	lea ecx, [4*esi+1234h]
	sub [esi-8], dword ptr 128
	fmul b[ebx]
ptl:
	mov dl, bl
	mov ebx, [esi+1234h]
	call edi
	mov [eax+ecx], bl
	loop ptl
Ppp1:
	shld [edx+4*esi], eax, 3
	and cl, 0fh
	div dword ptr [esi][ecx]
	mov cx, [ebx+120h]
	loop Ppp1

_asdf PROC
	push ebp
	mov ebp, esp
	pop ebp
	ret
_asdf ENDP

OMG:
	mov eax, 10
	mov dl, 1
	mov dx, 1
	mov ecx, edx
	mov esi, [edi]
	mov [edi], esi
	mov eax, [ebp + 4*eax + 8]
	mov eax, ss
	mov [ebx], word PTR 12H
	movsx ebx, bx
	xchg ax, bx
	lea eax, [ebx]
	lea eax, [ecx + eax + 12]
	push edi
	pop eax
	add eax, 1
_main ENDP
END