#!/usr/bin/env python

import os
import shutil
import sys
from subprocess import call

PROGRAM_DIR = "/Users/cameron/school/cpe473/RayTracer/build/"
PROGRAM = os.path.join(PROGRAM_DIR, "raytrace")

POV_DIR = "/Users/cameron/school/cpe473/RayTracer/resources/"
POV_FILES = [
    "simple", "pbr_grid", "planes", "simp_cam0", "simp_cam1", "simp_cam2",
    "simp_cam3", "specular", "spheres", "ugly",
]

OUTPUT_PNG = os.path.join(os.getcwd(), "output.png")
BP_OUTPUT_DIR = os.path.join(os.getcwd(), "blinn_phong")
CT_OUTPUT_DIR = os.path.join(os.getcwd(), "cook_torrance")

MODE = 0
if len(sys.argv) >= 2:
    if sys.argv[1].strip() == "bp":
        MODE = 1
    if sys.argv[1].strip() == "ct":
        MODE = 2

def run(pov, with_alt_brdf):
    command = [PROGRAM, "render", pov, "640", "480"]
    if with_alt_brdf:
        command += ["-altbrdf"]
    call(command)

def main():
    for dir in [BP_OUTPUT_DIR, CT_OUTPUT_DIR]:
        if not os.path.isdir(dir):
            os.mkdir(dir)

    for pov in POV_FILES:
        pov_file = os.path.join(POV_DIR, "{}.pov".format(pov))

        if MODE != 2:
            print("--- {}: {} ---".format("Blinn-Phong", pov))
            run(pov_file, False)
            target = os.path.join(BP_OUTPUT_DIR, "{}.png".format(pov))
            shutil.copy(OUTPUT_PNG, target)

        if MODE != 1:
            print("--- {}: {} ---".format("Cook-Torrance", pov))
            run(pov_file, True)
            target = os.path.join(CT_OUTPUT_DIR, "{}.png".format(pov))
            shutil.copy(OUTPUT_PNG, target)

    if os.path.exists(OUTPUT_PNG):
        os.remove(OUTPUT_PNG)

if __name__ == "__main__":
    main()
