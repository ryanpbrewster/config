#!/usr/bin/python

import argparse
import os

PARSER = argparse.ArgumentParser(description = "Bootstrap personal config")
PARSER.add_argument(
        "-f",
        "--force",
        action = "store_true",
        help = "overwrite existing config files?",
        dest = "force",
        default = False)

def symlink(src, dest):
    container = os.path.dirname(dest)
    if not os.path.isdir(container):
        os.makedirs(container)
    elif os.path.lexists(dest):
        if os.path.realpath(dest) == src:
            print("{} already set up correctly, skipping...".format(dest))
            return
        elif FLAGS.force:
            os.remove(dest)
        else:
            raise Exception("{} already exists, use -f to overwrite".format(dest))
    print("symlinking {} to {}".format(src, dest))
    os.symlink(src, dest)

def git(config, home):
    symlink(
            "{}/git/gitconfig".format(config),
            "{}/.gitconfig".format(home))

def i3(config, home):
    symlink(
            "{}/i3/config".format(config),
            "{}/.config/i3/config".format(home))

def i3status(config, home):
    symlink(
            "{}/i3status/config".format(config),
            "{}/.config/i3status/config".format(home))

def vim(config, home):
    symlink(
            "{}/vim/vimrc".format(config),
            "{}/.vimrc".format(home))
    symlink(
            "{}/vim/colors".format(config),
            "{}/.vim/colors".format(home))

def main():
    global FLAGS
    print("Starting boostrap...")
    FLAGS = PARSER.parse_args()

    config = os.path.dirname(os.path.abspath(__file__))
    home = os.environ["HOME"]

    git(config, home)
    i3(config, home)
    i3status(config, home)
    vim(config, home)

    print("done!")

if __name__ == "__main__":
    main()