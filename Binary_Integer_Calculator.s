// Class: CIS - 11
// Session: 47465
// Computer Organization and Architecture (x86)
// Riverside City College
// Assignment: Binary Integer Calculator (sum, difference, product)
// Date: 18 Sept 2017
// Programmer: Henghui He
// =====================================

.data
first_prompt: .asciz "Hello! Welcome to TWO INTEGERS! Enter the first integer number:\n"
second_prompt: .asciz "Enter the second integer number:\n"

first_value: .word 0
second_value: .word 0

pattern: .asciz "%d" 

first_response: .asciz "The sum of %d and %d is %d.\n"
second_response: .asciz "The difference of %d and %d is %d.\n"
third_response: .asciz "The product of %d and %d is %d.\n"


	.text
	.global main
main:
	push {lr}
	ldr r0, =first_prompt
	bl printf
	
	ldr r0, =pattern
	ldr r1, =first_value
	bl scanf

	ldr r0, =second_prompt
	bl printf

	ldr r0, =pattern
	ldr r1, =second_value
	bl scanf

	ldr r1, =first_value
	ldr r1, [r1]
	ldr r2, =second_value
	ldr r2, [r2]
	add r3, r1, r2
	ldr r0, =first_response
	bl printf

	ldr r1, =first_value
	ldr r1, [r1]
	ldr r2, =second_value
	ldr r2, [r2]
	sub r3, r1, r2
	ldr r0, =second_response
	bl printf

	ldr r1, =first_value
	ldr r1, [r1]
	ldr r2, =second_value
	ldr r2, [r2]
	mul r3, r1, r2
	ldr r0, =third_response
	bl printf

	mov r0, #0
	pop {pc}

