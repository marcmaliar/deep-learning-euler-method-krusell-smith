#!/bin/bash
# install the versioned required packages
python -m venv venv
source ./venv/bin/activate
echo "Installing requirements.txt (Python packages)"
pip install -r binder/requirements.txt --quiet

# navigate to code/ and execute the python file to create figures
#cd ./code/python
jupyter nbconvert --to python ./code/python/Main_KS.ipynb --output Main_KS.py
ipython ./code/python/Main_KS.py

# Cleanup
rm ./code/python/Main_KS.py
#cd ../..
deactivate
#rm -rf venv
