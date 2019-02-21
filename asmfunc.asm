Public _asmfunc 
.model small
.stack

.data
	mystr db 'Hello from Assembly :) !$'

.code

_asmfunc PROC

	mov ah,2
	mov dl,"@"
	int 21h
	
	mov dl,0Ah ; CR
	int 21h
	mov dl,0Dh ;LF
	int 21h
	
	lea dx, mystr
	mov ah,9
	int 21h
	ret

_asmfunc ENDP
end

