; Materia: Lenguajes de Interfaz
; Alumno: Carlos Alfonso Rivas Núñez
; Unidad: 3
; Práctica 5: Definición y uso de macros
; Descripción: utiliza una macro para imprimir texto y otra para multiplicar.

INCLUDE Irvine32.inc

; imprimirLinea coloca la dirección del texto en EDX,
; lo muestra y agrega un salto de línea.
imprimirLinea MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

; obtenerProducto carga los operandos y ejecuta MUL.
; El resultado de 32 bits queda en EAX (para estos operandos).
obtenerProducto MACRO operandoA, operandoB
    mov eax, operandoA
    mov ebx, operandoB
    mul ebx
ENDM

.data
    saludo BYTE "Bienvenido al programa de macros.", 0
    despedida BYTE "Gracias por utilizar el programa.", 0
    etiqueta BYTE "Producto de los dos valores: ", 0
    valorA DWORD 7
    valorB DWORD 8

.code
main PROC
    ; Mostrar los textos mediante la macro imprimirLinea.
    imprimirLinea saludo
    imprimirLinea despedida
    imprimirLinea etiqueta

    ; Calcular 7 por 8 y mostrar el contenido de EAX.
    obtenerProducto valorA, valorB
    call WriteDec
    call Crlf

    exit
main ENDP

END main
