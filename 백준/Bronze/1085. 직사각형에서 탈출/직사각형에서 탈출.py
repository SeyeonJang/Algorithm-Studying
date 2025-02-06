x,y,w,h = map(int, input().split())
min = x
if w-x<min: min = w-x
if h-y<min: min = h-y
if y<min: min = y
print(min)