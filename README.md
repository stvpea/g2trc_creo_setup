# README #

## Introduction ##
Startup scripts to deploy the standard Creo setup.

The start process is three stage:

1. creo_bootstrap.py clones the latest standards from Bitbucket repo and replaces the existing ones.
2. creo_start_2.py is delivered from the Bitbucket repo so can be updated easily.
3. run_creo.bat is the final stage and actually calls Creo. It can be overridden by creo_start_2.py or updated from Bitbucket.

A simple batch file calls the two scripts and launches Creo if there is no error.

## Requirements ##
1. Mercurial (install TortoiseHg)
2. Python 3.x (install Anaconda Python)
3. Ensure that the user has a "HOME" env var.

## Installation ##
Run install.py:

copies creo_bootstrap.py and creo_bootstrap.bat to $LocalAppData/g2trc_creo_boot (creating the dir if necessary)