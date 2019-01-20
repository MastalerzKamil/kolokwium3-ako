.686
.model flat
public _main

.data
b	dd	 0c8h
.code
_main PROC
etyk:
	mul b
	lea ecx, [4*esi+1234h]
	sub [esi-8], dword ptr 128
	sub [esi-8], dword ptr 128
	fmul b[ebx]
	loop etyk
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
	or eax, ebx
; ZESTAW 1
ptl1: mov cx, dx
     in al, 73H
     sub ebx, 1
     loop ptl1
     add edx, 3

; ZESTAW 2
     jc cos
ptl2: mov [ebx+ecx], dl
     and si, bx
     loop ptl2
cos:
; ZESTAW 3
ptl3: mov al, bh
     out 70H, al
     in al, 64h
     sub bh, [esi][edi]
     inc ebx
     loop ptl3
; ZESTAW 4
ppp: rol eax, 4        ; C1 C0 04
     and eax, 0Fh      ; 83 E0 0F
     inc edx           ; 42
     mov [ebx+edx], al ; 88 04 1A
     loop ppp          ; E2 F4
; wlasne pryklady
etyk2: div b
	lea ecx, [esp+1234h]
	lea ebx, [4*esi+1234h]
	fmul b[ebx]
	sub [esp-8], dword PTR 128
	loop etyk2
_main ENDP
END