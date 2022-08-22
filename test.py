import sys
from collections import deque

def bfs(v):
    queue = deque()
    queue.append(v)
    visited[v] = 0
    while queue:
        # print(queue)
        v = queue.popleft()

        if v+u<=f and visited[v+u] == -1 :
            visited[v+u] = visited[v]+1
            queue.append(v+u)
        if v-d > 0 and visited[v-d] == -1 :
            visited[v-d] = visited[v]+1
            queue.append(v-d)

f,s,g,u,d = map(int,sys.stdin.readline().split())

visited = [-1]*(f+1)
bfs(s)
# print(visited)
if visited[g] == 0 and g!=s:
    print('use the stairs')
else:
    print(visited[g])

    