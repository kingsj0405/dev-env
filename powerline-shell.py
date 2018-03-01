"""
This script is dependent on two repository on github
Should be updated when the projects are updated
- https://github.com/b-ryan/powerline-shell
- https://github.com/powerline/fonts
"""

from os import getcwd
from os.path import expanduser, join

import subprocess

def powerline_shell():
    # Install fonts for powerline-shell
    command_setup_powerline_font = 'sudo apt-get install fonts-powerline'
    process = subprocess.Popen(command_setup_powerline_font.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
    # Install powerline-shell
    command_setup_powerline_shell = 'pip install powerline-shell'
    process = subprocess.Popen(command_setup_powerline_shell.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
    # Add some instruction to .bashrc to use powerline-shell
    path_to_bashrc = join(expanduser("~"), ".bashrc")
    path_to_instruction = join(getcwd(), "etc", "bashrc_powerline_shell")
    with open(path_to_bashrc, "a+") as outfile:
        with open(path_to_instruction) as infile:
            current_bashrc_content = outfile.readlines()
            content_to_append = infile.readlines()
            if content_to_append[1] not in current_bashrc_content:
                print("Add some content to bashrc...")
                for line in content_to_append:
                    outfile.write(line)
            else:
                print("No need to add some content to bashrc")


if __name__ == '__main__':
    powerline_shell()
