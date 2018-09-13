#
# Option 1: Set up virtualenv (external) with pip install virtualenv
#
# virtualenv is a tool to create isolated Python environments. 
# virtualenv creates a folder which contains all the necessary executables to 
# use the packages that a Python project would need.
# https://docs.python-guide.org/dev/virtualenvs/
#
# Terminal Commands to Create a virtualenv 
# with the Python Version of your choice:
#
# pip install virtualenv
# cd my_reticulate_project
# virtualenv -p /usr/bin/python2.7 reticulate
#
# source reticulate/bin/activate
# pip install ...
# deactivate
#

# Recommended: Start a fresh R Session
library(reticulate)
use_virtualenv("reticulate", required = TRUE)
py_config()
# python: reticulate/bin/python

os <- import("os")
os$system("pip list")

# Python Check
# import os
# os.system("pip list)

#
# Option 2: Set up virtualenv (internal) with reticulate
# 
# Currently detects and prefers Python 2
# Issue (python 2 vs 3): 
# https://github.com/rstudio/reticulate/issues/294
# https://github.com/rstudio/reticulate/issues/194
#

virtualenv_create("internal_reticulate")

# Recommended: Start a fresh R Session
library(reticulate)
use_virtualenv("internal_reticulate", required = TRUE)
py_config()
# python: /Users/kelly/.virtualenvs/internal_reticulate/bin/python
# virtualenv:     /Users/kelly/.virtualenvs/internal_reticulate/bin/activate_this.py
# version:        2.7.10 (default, Oct  6 2017, 22:29:07)




