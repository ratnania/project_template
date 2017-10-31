# -*- coding: UTF-8 -*-
#! /usr/bin/python

import sys
from setuptools import find_packages
from numpy.distutils.core import setup
from numpy.distutils.core import Extension
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

# ... TODO to set if the project needs external libraries
include_dirs = []
library_dirs = []
libraries    = []

# fortran extension
fortran_ext = Extension('project_template.core.m_interface',                 \
                        sources = ['project_template/core/m_interface.pyf',  \
                                   'project_template/core/m_interface.f90'], \
                        f2py_options = ['--quiet'],                        \
#                        define_macros = [                                  \
#                                         #('F2PY_REPORT_ATEXIT', 0),
#                                         ('F2PY_REPORT_ON_ARRAY_COPY', 0)], \
                        include_dirs=include_dirs,                         \
                        library_dirs=library_dirs,                         \
                        libraries=libraries)

ext_modules  = [fortran_ext]
# ...

def setup_package():
    setup(packages=packages, \
          include_package_data=True, \
          install_requires=install_requires, \
          ext_modules=ext_modules, \
# TODO uncomment to have a command 'project_template ...'
#          entry_points={'console_scripts': ['project_template = project_template.commands.console:project_template']}, \
          **setup_args)

if __name__ == "__main__":
    setup_package()
