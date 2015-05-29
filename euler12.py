def num_factors(n):
    return len(set(reduce(list.__add__, ([i, n/i] for i in range(1, int(n**0.5) + 1) if n % i == 0))))

def nth_tri_num(n):
    return n*(n+1)/2

for i in range(100, 20000):
    if num_factors(nth_tri_num(i)) >= 500:
        print nth_tri_num(i)
        break;

