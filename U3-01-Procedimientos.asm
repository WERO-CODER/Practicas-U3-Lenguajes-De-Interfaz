; Materia: Lenguajes de Interfaz
; Alumno: Carlos Alfonso Rivas Núñez
; Unidad: 3
; Práctica 1: Llamadas y retorno de procedimientos
; Descripción: realiza dos llamadas a un procedimiento que muestra un aviso.

INCLUDE Irvine32.inc

.data
    textoInicio BYTE "Inicio del programa", 0
    textoAviso  BYTE "Se ejecuto el procedimiento mostrarAviso", 0
    textoFinal  BYTE "Fin del programa", 0

.code
main PROC
    ; Mostrar el mensaje inicial.
    mov edx, OFFSET textoInicio
    call WriteString
    call Crlf

    ; Primera ejecución del procedimiento.
    call mostrarAviso

    ; Segunda ejecución del mismo procedimiento.
    call mostrarAviso

    ; Indicar que terminaron las llamadas.
    mov edx, OFFSET textoFinal
    call WriteString
    call Crlf

    exit
main ENDP

; mostrarAviso: presenta un texto y retorna a la instrucción
; que se encuentra inmediatamente después de CALL.
mostrarAviso PROC
    mov edx, OFFSET textoAviso
    call WriteString
    call Crlf
    ret
mostrarAviso ENDP

END main
