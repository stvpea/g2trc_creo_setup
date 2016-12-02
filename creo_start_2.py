import sys
import os
import shutil

REPO = sys.argv[1]
CREO_DIR = sys.argv[2]
CREO_TRAIL_DIR = sys.argv[3]

home = os.getenv('userprofile')

prefs_dir = os.path.join(home, '.creo_personal')

# The order of these files matters since the user options must appear later in
# the outputy file in order to override the defaults.
src_pro_files = [
    os.path.join(CREO_DIR, 'config.pro'), # System pro file
    os.path.join(prefs_dir, 'config.pro'), # User pro file
    ]

pro_file = os.path.join(home, 'config.pro')

print("**This is the second boot stage**")

if os.path.exists(CREO_DIR):
    # If required create, and populate, the user prefernce directory.
    if not os.path.exists(prefs_dir):
        print("Creating preference dir...")
        shutil.copytree(os.path.join(CREO_DIR, '.creo_personal'), prefs_dir)

    # Create the final config.pro by combining the system and user pro files.
    # We do it this way (instead of writing to the <creo/text> dir) as it does
    # not require admin rights.
    with open(pro_file, 'w+') as pf:
        print('Creating config.pro...')
        # Add the system colours option to config.pro. We do it here since
        # Creo will not expand env variables for this option (for unknown
        # reason).
        sp = os.path.join(prefs_dir, 'syscol.scl')
        pf.write("system_colors_file {}".format(sp))

        for f in src_pro_files:
            with open(f) as src_file:
                pf.write(src_file.read())
else:
    print("unable to launch Creo, no standards directory found...")
    sys.exit(1)

sys.exit(0)
