from PointDocstrings import Point
def main():

    p1 = Point()
    p2 = Point()

    p1.move(2, 2)
    p2.move(1, 0)

    print("P1-x, P1-y is: ", p1.x, p1.y)
    print("P2-x, P2-y is: ", p2.x, p2.y)
    print("Distance from P1 to P2 is:", p1.calc_distance(p2))
    p1.onAxes()
    p2.onAxes()



if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
