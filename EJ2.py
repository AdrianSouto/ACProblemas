def find_primes(n):
    i = 2
    j = 1
    contador = 0
    N = n

    while i <= N:
        while j <= i:
            if i % j == 0:
                contador += 1
            j += 1

        if contador == 2:
            print(i)

        j = 1
        contador = 0
        i += 1

# Llama a la función con un valor de n
n = 20
find_primes(n)
