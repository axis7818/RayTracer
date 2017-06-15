#!/usr/bin/env python

import os
import shutil
import sys
from subprocess import call

PROGRAM_DIR = "/Users/cameron/school/cpe473/RayTracer/build/"
PROGRAM = os.path.join(PROGRAM_DIR, "raytrace")

POV_DIR = "/Users/cameron/school/cpe473/RayTracer/resources/"
POV_FILES = [
    os.path.join(POV_DIR, "my_ao.pov"),
    os.path.join(POV_DIR, "simple_ao.pov"),
]

OUTPUT_PNG = os.path.join(os.getcwd(), "output.png")
RESULT_DIR = os.path.join(os.getcwd(), "ao_images")

def render(pov, with_gi, with_ao):
    command = [PROGRAM, "render", pov, "640", "480"]
    if with_gi:
        command += ["-gi"]
    if with_ao:
        command += ["-ao"]
    print(" ".join(command))
    call(command)

def main():

    if not os.path.isdir(RESULT_DIR):
        os.mkdir(RESULT_DIR)

    for file in POV_FILES:
        leaf = os.path.basename(file)
        leaf = os.path.splitext(leaf)[0]

        render(file, False, False)
        shutil.copy(OUTPUT_PNG, os.path.join(RESULT_DIR, "{}.png".format(leaf)))

        render(file, True, False)
        shutil.copy(OUTPUT_PNG, os.path.join(RESULT_DIR, "{}_gi.png".format(leaf)))

        render(file, False, True)
        shutil.copy(OUTPUT_PNG, os.path.join(RESULT_DIR, "{}_ao.png".format(leaf)))

        render(file, True, True)
        shutil.copy(OUTPUT_PNG, os.path.join(RESULT_DIR, "{}_giao.png".format(leaf)))


if __name__ == "__main__":
    main()
