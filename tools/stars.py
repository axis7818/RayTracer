#!/usr/bin/env python

import random

STAR_COUNT = 450

STAR_TEMPLATE = """
sphere {{
    <{}, {}, {}>, {}
    pigment {{ color rgb <{}, {}, {}>}}
    finish {{ ambient {} diffuse {} specular {} }}
}}
"""

def print_star(position):
    print(STAR_TEMPLATE.format(
        position[0], position[1], position[2],
        0.05, # radius
        2.5, 2.5, 2.5, # color
        0.2, # ambient
        0.4, # diffuse
        0.8 # specular
    ))

if __name__ == "__main__":

    X_RANGE = (-35, 35)
    Y_RANGE = (-30, 30)
    Z_RANGE = (-70, -15)

    for i in range(STAR_COUNT):
        x = random.uniform(*X_RANGE)
        y = random.uniform(*Y_RANGE)
        z = random.uniform(*Z_RANGE)

        print_star((x, y, z))
