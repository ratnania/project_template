# -*- coding: UTF-8 -*-
#! /usr/bin/python

import sys
from setuptools import setup, find_packages
import project_template

NAME    = 'project_template'
VERSION = project_template.__version__
AUTHOR  = 'Ahmed Ratnani'
EMAIL   = 'ahmed.ratnani@ipp.mpg.de'
URL     = 'https://github.com/ratnania/project_template'
DESCR   = 'A Python template for projects using f2py.'
KEYWORDS = ['math']
LICENSE = "LICENSE"

setup_args = dict(
    name                 = NAME,
    version              = VERSION,
    description          = DESCR,
    long_description     = open('README.rst').read(),
    author               = AUTHOR,
    author_email         = EMAIL,
    license              = LICENSE,
    keywords             = KEYWORDS,
    url                  = URL,
)

# ...
packages = find_packages(exclude=["*.tests", "*.tests.*", "tests.*", "tests"])
# ...

# ...
install_requires = ['numpy']

try:
    import sympy
except:
    install_requires += ['sympy']
# ...

def setup_package():
    setup(packages=packages, \
          include_package_data=True, \
          install_requires=install_requires, \
          entry_points={'console_scripts': ['project_template = project_template.commands.console:project_template']}, \
          **setup_args)

if __name__ == "__main__":
    setup_package()
