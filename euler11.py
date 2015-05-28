f = open('euler11.txt', 'r')

grid = [map(int, f.readline().split()) for i in range(20)]

horsum = max([max([grid[j][i] * grid[j][i+1] * grid[j][i+2] * grid[j][i+3] for i in range(17)]) for j in range(20)])

vertsum = max([max([grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i] for i in range(20)]) for j in range(17)])

rdiagsum = max([max([grid[j][i] * grid[j+1][i+1] * grid[j+2][i+2] * grid[j+3][i+3] for i in range(17)]) for j in range(17)])

ldiagsum = max([max([grid[j][i] * grid[j+1][i-1] * grid[j+2][i-2] * grid[j+3][i-3] for i in range(3, 20)]) for j in range(17)])

print max(horsum, vertsum, rdiagsum, ldiagsum)
