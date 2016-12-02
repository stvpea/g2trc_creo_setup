import os
import shutil

install_files = ['creo_bootstrap.py', 'creo_bootstrap.bat']

install_dir = os.path.join(os.getenv('LOCALAPPDATA'), 'g2trc_creo_boot')
desktop_path = os.path.join(os.getenv('USERPROFILE'), 'Desktop')

if not os.path.exists(install_dir):
    os.mkdir(install_dir)

for f in install_files:
    shutil.copy(f, os.path.join(install_dir, f))

shutil.copy('Start Creo Parametric.lnk', desktop_path)
