import subprocess
import tempfile
import os
import shutil
import sys

REPO = sys.argv[1]
CREO_DIR = sys.argv[2]
CREO_TRAIL_DIR = sys.argv[3]

print("**This is the bootloader**")

if not os.path.exists(CREO_TRAIL_DIR):
    os.mkdir(CREO_TRAIL_DIR)

# Attempt to retrieve the latest version of the standards. If it fails then
# attempt to continue as there may already be a set.
with tempfile.TemporaryDirectory() as td:
    try:
        print("Cloning new Creo standards")
        subprocess.run("hg clone -q {} {}".format(REPO, td), shell=True, check=True)

        if os.path.exists(CREO_DIR):
            print("Replacing old Creo standards")
            shutil.rmtree(CREO_DIR)

        shutil.copytree(td, CREO_DIR)

    except subprocess.CalledProcessError:
        print("Failed to clone current standards at:\n{}".format(REPO))
        print("continuing...")
