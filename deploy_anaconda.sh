#!/bin/bash
set -e

echo "Deploying to Anaconda.org..."
if [[ $TRAVIS_PYTHON_VERSION == 2.7 ]]; then
    anaconda -t $ANACONDA_TOKEN upload $HOME/miniconda/conda-bld/osx-64/camelot-py-0.2.3-py27_0.tar.bz2
elif [[ $TRAVIS_PYTHON_VERSION == 3.5 ]]; then
    anaconda -t $ANACONDA_TOKEN upload $HOME/miniconda/conda-bld/osx-64/camelot-py-0.2.3-py35_0.tar.bz2
elif [[ $TRAVIS_PYTHON_VERSION == 3.6 ]]; then
    anaconda -t $ANACONDA_TOKEN upload $HOME/miniconda/conda-bld/osx-64/camelot-py-0.2.3-py36_0.tar.bz2
fi

echo "Successfully deployed to Anaconda.org."
exit 0
