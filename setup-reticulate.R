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

library(reticulate)
use_virtualenv("reticulate", required = TRUE)
py_config()
# python: reticulate/bin/python

os <- import("os")
os$system("pip list")

# Python Check
# import os
# os.system("pip list)



