    	section .text
    	global  _start
_start:
    	mov 	ebx, 0
    	mov 	ecx, 1
loop:
    	add 	ebx, ecx
    	inc 	ecx
    	cmp 	ecx, 10
    	jle 	loop

    	mov 	eax, 1
    	int 	0x80
