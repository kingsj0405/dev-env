from os import getcwd
from os.path import expanduser, join

import subprocess

def run_command(command):
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()

def join_from_home(path, *paths):
    return join(expanduser("~"), path, *list(paths))

def join_from_cwd(path, *paths):
    return join(getcwd(), path, *list(paths))
