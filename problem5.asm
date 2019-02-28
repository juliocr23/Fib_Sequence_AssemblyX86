COMMENT*
         Julio Rosario
		Write a program that uses a loop to calculate the first seven values of the Fibonacci number sequence,
		described by the following formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib(n – 1) + Fib(n – 2).
		1 = 1
		1 = 2
		1+1 = 2
		2+1 = 3
		3+2 = 5
		5+3 = 8
		8+5= 13 ....
*COMMENT

Include Irvine32.inc

.data
fibonacci dword 0

;Note * characters only work with register EDX 

.code
main PROC
	num1  textequ<EDX>
	num2  textequ<EBX>
	output textequ<EAX>
	i textequ<ECX>

	MOV i,6		;Iteration
	MOV num1,0     
	MOV num2,1

	MOV output,num2  ;Display the first digit
	call writedec
	call crlf

	print:
	     ;Add both numbers two fibonacci
		add fibonacci,num1   
		add fibonacci,num2

		MOV num1,num2      ;num1 = num2
		MOV num2,fibonacci ; num2 = fibonacci

		MOV output,fibonacci ; Use EAX for displaying result.

		call writedec
		call crlf

		MOV fibonacci,0      ;Reset Fiboncci
		
	LOOP print
exit

main ENDP
end main