# Prácticas de la Unidad 3 — Lenguajes de Interfaz

**Alumno:** Carlos Alfonso Rivas Núñez  
**Unidad:** 3  
**Contenido:** cinco programas en lenguaje ensamblador x86 (MASM).

## Descripción del repositorio

Este repositorio reúne cinco ejercicios sobre procedimientos, llamadas anidadas, validación de datos, manejo manual de la pila y macros. Cada archivo `.asm` incluye comentarios para identificar su propósito, explicar las instrucciones principales y describir los datos de entrada y salida.

## Prácticas

| Archivo | Tema | ¿Qué realiza? | Resultado que se debe observar |
|---|---|---|---|
| `U3-01-Procedimientos.asm` | Procedimientos | Ejecuta dos veces `mostrarAviso` desde `main`. | Se muestran el mensaje inicial, dos avisos y el mensaje final. |
| `U3-02-Procedimientos_Anidados.asm` | Llamadas anidadas | `main` llama a `RutinaA`, que llama a `RutinaB`. | Los mensajes aparecen en el orden de entrada y retorno: MAIN, A, B, regreso a A y regreso a MAIN. |
| `U3-03-Validacion_Entrada.asm` | Validación | El procedimiento `comprobarLongitud` evalúa el valor recibido en ECX. | Con ECX = 0 se informa que la entrada está vacía; con ECX = 7 se indica que contiene datos. |
| `U3-04-Pila_Manual.asm` | Pila y parámetros | Envía 25 y 3 mediante `PUSH`; el procedimiento recupera los argumentos usando EBP y los multiplica. | Se muestra el producto 75. `RET 8` retira los dos argumentos de la pila. |
| `U3-05-Macros.asm` | Macros | Define una macro para imprimir texto y otra para multiplicar dos valores. | Se muestran los mensajes y el producto 56 (7 × 8). |

## Requisitos

- Windows de 32 bits o entorno compatible con ensamblador x86.
- MASM (Microsoft Macro Assembler).
- Biblioteca Irvine32 configurada en el entorno de desarrollo.
- Visual Studio u otra configuración compatible con MASM e Irvine32.

## Cómo compilar y ejecutar

1. Abre el proyecto o crea uno de tipo consola x86 compatible con MASM.
2. Configura las rutas de inclusión y bibliotecas de Irvine32.
3. Agrega el archivo `.asm` de la práctica que quieras ejecutar.
4. Compila el programa como aplicación de 32 bits.
5. Ejecuta y compara la salida con el resultado esperado descrito en la tabla.

> **Nota de comprobación:** los resultados descritos son los esperados de acuerdo con la lógica del código. Los archivos se prepararon y revisaron estáticamente, pero no se afirma que hayan sido compilados o ejecutados en esta sesión. Para documentar una ejecución real, realiza las pruebas en un entorno con MASM e Irvine32 y conserva evidencia de la salida.

## Organización

```text
Practicas_U3_Carlos_Alfonso_Rivas_Nunez/
├── README.md
├── U3-01-Procedimientos.asm
├── U3-02-Procedimientos_Anidados.asm
├── U3-03-Validacion_Entrada.asm
├── U3-04-Pila_Manual.asm
└── U3-05-Macros.asm
```

## Autor

Carlos Alfonso Rivas Núñez
