; Materia: Lenguajes de Interfaz
; Alumno: Carlos Alfonso Rivas Núñez
; Unidad: 3
; Práctica 2: Procedimientos anidados
; Descripción: main llama a RutinaA y esta, a su vez, invoca RutinaB.

INCLUDE Irvine32.inc

.data
    mensajePrincipal BYTE "1. Ejecucion en MAIN", 0
    mensajeRutinaA   BYTE "2. Entrada a RutinaA", 0
    mensajeRutinaB   BYTE "3. Entrada a RutinaB", 0
    mensajeRetornoA  BYTE "4. Regreso a RutinaA", 0
    mensajeRetornoM  BYTE "5. Regreso a MAIN", 0

.code
main PROC
    ; Punto inicial de la secuencia.
    mov edx, OFFSET mensajePrincipal
    call WriteString
    call Crlf

    ; La dirección de continuación se guarda en la pila.
    call RutinaA

    ; Se ejecuta después del RET de RutinaA.
    mov edx, OFFSET mensajeRetornoM
    call WriteString
    call Crlf

    call WaitMsg
    exit
main ENDP

; RutinaA muestra su mensaje, llama a RutinaB y continúa
; cuando RutinaB ejecuta RET.
RutinaA PROC
    mov edx, OFFSET mensajeRutinaA
    call WriteString
    call Crlf

    call RutinaB

    mov edx, OFFSET mensajeRetornoA
    call WriteString
    call Crlf
    ret
RutinaA ENDP

; RutinaB es el procedimiento más interno de la secuencia.
; Su RET devuelve el control a RutinaA.
RutinaB PROC
    mov edx, OFFSET mensajeRutinaB
    call WriteString
    call Crlf
    ret
RutinaB ENDP

END main
