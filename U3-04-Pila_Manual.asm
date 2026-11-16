; Materia: Lenguajes de Interfaz
; Alumno: Carlos Alfonso Rivas Núñez
; Unidad: 3
; Práctica 4: Paso de parámetros mediante la pila
; Descripción: apila dos valores y los multiplica dentro de un procedimiento.

INCLUDE Irvine32.inc

.data
    mensajeResultado BYTE "Producto calculado a partir de la pila: ", 0

.code
main PROC
    ; Se conserva un valor en EBX para comprobar que el procedimiento
    ; restaura el registro después de utilizarlo.
    mov ebx, 999

    ; Los argumentos se colocan en la pila antes de CALL.
    push 3
    push 25
    call multiplicarDesdePila

    ; EAX contiene el producto devuelto por el procedimiento.
    mov edx, OFFSET mensajeResultado
    call WriteString
    call WriteDec
    call Crlf

    call WaitMsg
    exit
main ENDP

; multiplicarDesdePila:
; Crea un marco de pila con EBP para acceder a los argumentos.
; [EBP+8] y [EBP+12] contienen los dos valores recibidos.
; Devuelve el producto en EAX y ret 8 libera los dos argumentos.
multiplicarDesdePila PROC
    push ebp
    mov ebp, esp

    ; Guardar EBX porque se utilizará como registro temporal.
    push ebx

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    imul eax, ebx

    ; Restaurar los registros y retirar los parámetros.
    pop ebx
    pop ebp
    ret 8
multiplicarDesdePila ENDP

END main
