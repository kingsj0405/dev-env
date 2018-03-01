"""
This script is dependent on two repository on github
Should be updated when the projects are updated
- https://github.com/b-ryan/powerline-shell
- https://github.com/powerline/fonts
"""

from util import run_command, join_from_home, join_from_cwd

def powerline_shell():
    # Install fonts for powerline-shell
    run_command('sudo apt-get install fonts-powerline')
    # Install powerline-shell
    run_command('pip install powerline-shell')
    # Add some instruction to .bashrc to use powerline-shell
    path_to_bashrc = join_from_home(".bashrc")
    path_to_instruction = join_from_cwd("etc", "bashrc_powerline_shell")
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
