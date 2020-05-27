# 4. Scrabble 🔠

![](https://paper-attachments.dropbox.com/s_6B4945FB0F5F93CCB7A9DBF0F75CBCECAF7589AEB692AD0FAF3255B6A53CAA4A_1590175438170_image.png)


El emocionante juego de mesa en el cual cada jugador intenta ganar más puntos mediante la construcción de palabras. ¿Tu función? Crear una calculadora que, dado una palabra, calcular el puntaje de ella.

Valor de cada letra
    Letter                           Value
    A, E, I, O, U, L, N, R, S, T       1
    D, G                               2
    B, C, M, P                         3
    F, H, V, W, Y                      4
    K                                  5
    J, X                               8
    Q, Z                               10
Ejemplo

"pepperoni" debe regresar un valor de 15 puntos:


- 3 puntos para la P, tres veces
- 1 punto para la E, dos veces
- 1 punto para la R
- 1 punto para la O
- 1 punto para la N
- 1 punto para la I

Y el total:

- `3*3 + 1*2 + 1 + 1 + 1 + 1`
- = `9 + 2 + 4`
- = 15