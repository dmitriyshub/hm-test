# PROGRAM Point-Docstrings:

import math


class Point:
    "CLASS POINT: Represents a point in 2D space"

    def move(self, a, b):
        'METHOD MOVE: Move the point to a new location'
        self.x = a
        self.y = b

    # END Reset

    def reset(self):
        'METHOD REST: Reset the point back to the origin'
        self.move(0, 0)

    # END Reset

    def calc_distance(self, other_point):
        'METHOD CALC_DISTANCE: Get the distance between two points'
        return math.sqrt(
            (self.x - other_point.x) ** 2 +
            (self.y - other_point.y) ** 2)
    # END calc_distance

    def onAxes(self):
        if self.x > 0 and self.y == 0:
            print("x")
        elif self.y > 0 and self.x == 0:
            print("y")

        elif self.x == 0 and self.y == 0:
            print("On the origin")
        else:
            print("it is a regular point")



# # END Class
#
# p1 = Point()
# p2 = Point()
#
# p1.move(2, 2)
# p2.move(6, 5)
#
# print("P1-x, P1-y is: ", p1.x, p1.y)
# print("P2-x, P2-y is: ", p2.x, p2.y)
# print("Distance from P1 to P2 is:", p1.calc_distance(p2))
#
# # END.
#
# help(Point)