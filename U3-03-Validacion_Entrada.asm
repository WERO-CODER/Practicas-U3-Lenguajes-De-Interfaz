; Materia: Lenguajes de Interfaz
; Alumno: Carlos Alfonso Rivas Núñez
; Unidad: 3
; Práctica 3: Validación de una entrada mediante procedimientos
; Descripción: recibe en ECX una longitud y devuelve en EAX 0 o 1.

INCLUDE Irvine32.inc

.data
    encabezadoCero BYTE "Prueba con longitud igual a cero:", 0
    encabezadoSiete BYTE "Prueba con longitud igual a siete:", 0
    resultadoVacio BYTE "Resultado: la entrada esta vacia (EAX = 0).", 0
    resultadoConDatos BYTE "Resultado: la entrada contiene datos (EAX = 1).", 0

.code
main PROC
    ; Caso 1: una longitud de cero representa una entrada vacía.
    mov edx, OFFSET encabezadoCero
    call WriteString
    call Crlf

    mov ecx, 0
    call comprobarLongitud
    call mostrarEstado

    call Crlf

    ; Caso 2: una longitud distinta de cero representa datos.
    mov edx, OFFSET encabezadoSiete
    call WriteString
    call Crlf

    mov ecx, 7
    call comprobarLongitud
    call mostrarEstado

    call Crlf
    call WaitMsg
    exit
main ENDP

; comprobarLongitud:
; Entrada: ECX contiene la cantidad de caracteres.
; Salida: EAX = 0 si ECX es cero; EAX = 1 en otro caso.
comprobarLongitud PROC
    cmp ecx, 0
    je longitudCero

    mov eax, 1
    ret

longitudCero:
    mov eax, 0
    ret
comprobarLongitud ENDP

; mostrarEstado interpreta el valor booleano que devuelve EAX.
mostrarEstado PROC
    cmp eax, 0
    je mostrarVacio

    mov edx, OFFSET resultadoConDatos
    call WriteString
    ret

mostrarVacio:
    mov edx, OFFSET resultadoVacio
    call WriteString
    ret
mostrarEstado ENDP

END main
