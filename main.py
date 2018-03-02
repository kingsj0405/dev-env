import argparse

from powerline_shell import powerline_shell
from vim import vim

FUNCTION_MAP = {
        'powerline-shell': powerline_shell,
        'vim': vim
        }

parser = argparse.ArgumentParser(description='Development Environment Setup Tools')
parser.add_argument('command',
        choices=FUNCTION_MAP.keys(),
        help='Setup each tool')

args = parser.parse_args()

func = FUNCTION_MAP[args.command]
func()
