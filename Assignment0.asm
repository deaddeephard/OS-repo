
section .text
	extern printf
	global main
	extern scanf

main:
	push rbp
	mov rdi,format
	mov rsi,mssg
	mov rax, 0
	call scanf 

	mov rdi,format
	mov rsi, mssg
	mov rax, 0
	call printf

	mov rdi,format1
	mov rsi, mseg
	mov rax,0
	call scanf

	mov rdi,format1
	mov rsi, [mseg]
	mov rax,0
	call printf

	pop rbp
 	ret

section .data
	format1:   db "%d" , 0
  	format:    db "%s" ,10, 0

section .bss
        mssg resb 20
	mseg resb 10
