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
	mov eax, esp
	add eax, 0DEADBEEFh
	add bx, dx
	add al, al
	add eax, [ecx+12]
	add [ecx+4*ebp+16], ax
	sub al, 7h
	sub ebp, 1234H
	sub al, al
	cmp ecx, 123H
	cmp al, 0
	inc eax
	dec ebx
	mul ecx
	mul dword PTR [ebp]
	mul word ptr [esi+12]
	mul dword PTR [esi]
	div ecx
	div dword PTR [eax+12]
	div dword PTR b
	div dword PTR b[ebp]
	div dword ptr [256h + ecx*4]
	and eax, ebx
	and eax, 12h
	xor bl, 12h
lol:
	rol eax, 15
	ror ax, 6
	loop lol
	mov eax, [ebx*4 + 8]
	mov eax, [esp + 8]
	mov eax, [ecx + 4*ebx]
	mov eax, [esp + 4*edi + 12]
	mov eax, [edi + 4*edi + 8]
_main ENDP
END