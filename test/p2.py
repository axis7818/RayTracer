#!/usr/bin/env python

import filecmp
import os
import sys
from subprocess import call

TEST_FILES_DIR = "/Users/cameron/school/cpe473/csc473-testfiles/p2/"
PROGRAM_DIR = "/Users/cameron/school/cpe473/RayTracer/build/"
# TEST_FILES_DIR = "/home/ctaylo36/473/csc473-testfiles/p2/"
# PROGRAM_DIR = "/home/ctaylo36/473/RayTracer/build/"

PROGRAM = os.path.join(PROGRAM_DIR, "raytrace")
OUTPUT_FILE = os.path.join(PROGRAM_DIR, ".tmp.out")

TESTS = []
for i in range(1, 5):
    TESTS.append((
        i,
        os.path.join(TEST_FILES_DIR, "test{}.args".format(i)),
        os.path.join(TEST_FILES_DIR, "test{}.out".format(i)),
    ))

def run_test(test_args, test_out, single=False):
    with open(test_args, 'r') as args_file:
        args = args_file.readline()
    command = [PROGRAM] + [arg.strip() for arg in args.split(" ")]

    if single:
        print(" ".join(command[1:]) + "\n")
    with open(OUTPUT_FILE, 'w') as out_file:
        ret_val = call(command, stdout=out_file)
    if ret_val != 0:
        return False

    comparison = filecmp.cmp(OUTPUT_FILE, test_out, shallow=False)
    if not comparison and single:
        call(["diff", OUTPUT_FILE, test_out])
    return comparison

if __name__ == "__main__":
    if not os.path.isdir(TEST_FILES_DIR):
        print("bad TEST_FILES_DIR")
        exit(1)
    if not os.path.isdir(PROGRAM_DIR):
        print("bad PROGRAM_DIR")
        exit(1)

    results = {}

    os.chdir(PROGRAM_DIR)

    if len(sys.argv) > 1 and int(sys.argv[1]) <= len(TESTS):
        index = int(sys.argv[1]) - 1
        print("--- test {} ---".format(index))
        if not run_test(TESTS[index][1], TESTS[index][2], single=True):
            results[index] = "failed..."
        else:
            results[index] = "passed!"
    else:
        for (index, test_args, test_out) in TESTS:
            print("--- test {} ---".format(index))
            if not run_test(test_args, test_out, single=False):
                results[index] = "failed..."
            else:
                results[index] = "passed!"

    print("\nresults...")
    for (index, result) in results.items():
        print("test {}: {}".format(index, result))

    if os.path.exists(OUTPUT_FILE):
        os.remove(OUTPUT_FILE)
