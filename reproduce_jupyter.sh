#!/bin/bash
# install the versioned required packages
python -m venv venv
source ./venv/bin/activate
echo "Installing requirements.txt (Python packages)"
pip install -r binder/requirements_jupyter.txt --quiet

# navigate to code/ and execute the python file to create figures
# pip list
#cd ./code/python
jupyter notebook ./code/python/Main_KS.ipynb

# Cleanup
#cd ../..
deactivate
#rm -rf venv
