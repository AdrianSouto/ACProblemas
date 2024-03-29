if __name__ == '__main__':
    n = 6
    count = 0
    i = 2
    result = 0
    while count < n:
        j = 1
        cDivisores = 0
        while j <= i/2:
            if i % j == 0:
                cDivisores += 1
            j+=1
        if cDivisores == 1:
            count += 1
            if count == n:
                result = i
        i+=1
    print(result)