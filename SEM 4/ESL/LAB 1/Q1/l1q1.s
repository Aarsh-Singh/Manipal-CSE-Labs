	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	MOV R0,#10
	LDR R1, =DST1
	STR R0,[R1]
STOP
	B STOP
	AREA mydata,DATA,READWRITE
DST1 DCD 0
	END