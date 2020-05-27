# 11. Conjetura de Collatz ⚛

![](https://paper-attachments.dropbox.com/s_6B4945FB0F5F93CCB7A9DBF0F75CBCECAF7589AEB692AD0FAF3255B6A53CAA4A_1590174519953_image.png)

La conjetura de Collatz o el problema de 3x + 1 puede resumirse así:


- Dado un entero positivo n
- Si n es par, divide n entre 2 (n / 2)
- Si n es non o impar, multiplica n entre 3 y agrega 1 (3n + 1).
- Repite el proceso indefinidamente 

La conjetura establece que, no importa con que número inicies, siguiendo este algoritmo, siempre llegarás a 1 eventualmente.

Crea una función que retorne el número de pasos para llegar a 1.


Ejemplo

Usando `n = 12`, los pasos serían los siguientes:


1. 12
2. 6
3. 3
4. 10
5. 5
6. 16
7. 8
8. 4
9. 2
10. 1

Resultando en un proceso de 9 pasos. Por lo tanto, para una entrada de valor 12, la función retorna un valor de 9.

Para más información acerca del tema: https://es.wikipedia.org/wiki/Conjetura_de_Collatz
