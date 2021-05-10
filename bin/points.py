#!/usr/bin/env python3
import sys

def parse(input):
    i = input.split(",")
    return (int(i[0]), int(i[1]))

points = [parse(i) for i in sys.argv[1:]]

if len(points) >= 2:
    gradient = lambda p2, p1 : float('inf') if (p2[0] - p1[0]) == 0 else (p2[1] - p1[1]) / (p2[0] - p1[0])
    m = gradient(points[1], points[0])
    for n in range(len(points) - 1):
        if m != gradient(points[n + 1], points[n]):
            print("no linear pattern")
            quit()
    if m == float('inf'):
        print(f"x = {points[0][0]}")
    elif m == 0:
        print(f"y = {points[0][1]}")
    else:
        f = lambda i : int(i) if i.is_integer() else i
        c = points[0][1] - points[0][0]*m
        c =  "" if c == 0 else f" + {f(c)}"
        m = "-" if m < 0 else "" if abs(m) == 1 else f(m)
        print(f"y = {m}x{c}")
