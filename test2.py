import sys
from collections import deque

def bfs(v):
    queue = deque()
    queue.append([v,0])
    dv = v
    while queue:
        # print(queue)
        v = queue.popleft()
        if v+u>f or v+u == dv:
            continue
        else:
            if visited[v+u] == 0 :
                visited[v+u] = visited[v]+1
                queue.append(v+u)
        if v-d<=0 or v-d == dv:
            continue
        else:
            if visited[v-d] == 0 :
                visited[v-d] = visited[v]+1
                queue.append(v-d)

f,s,g,u,d = map(int,sys.stdin.readline().split())

visited = [0]*(f+1)
bfs(s)
# print(visited)
if visited[g] == 0 and g!=s:
    print('use the stairs')
else:
    print(visited[g])