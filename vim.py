
"""
This script is dependent on two repository on github
Should be updated when the projects are updated
- https://github.com/b-ryan/powerline-shell
- https://github.com/powerline/fonts
"""

from os.path import exists

from util import run_command, join_from_home, join_from_cwd

def vim():
    # Download Vundle
        path_to_vundle = join_from_home('.vim', 'bundle', 'Vundle.vim')
        if exists(path_to_vundle):
            print('No need to download vundle')
        else:
            print('Download vundle...')
            run_command('git clone https://github.com/VundleVim/Vundle.vim.git ' + path_to_vundle)
        # Copy .vimrc
        run_command(' '.join(['cp', join_from_cwd('etc', '.vimrc'), join_from_home('.vimrc')]))
        # Install Plugin
        run_command('vim PluginInstall +qall')


if __name__ == '__main__':
    vim()
