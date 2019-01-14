.686
.model flat
public _main

.data
b	dd	 0c8h
.code
_main PROC
	mul b
	lea ecx, [4*esi+1234h]
_main ENDP
END