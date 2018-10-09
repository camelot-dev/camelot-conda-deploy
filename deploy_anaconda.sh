#!/bin/bash
set -e

echo "Deploying to Anaconda.org..."
anaconda -t $ANACONDA_TOKEN upload $HOME/miniconda/conda-bld/osx-64/camelot-py-*.tar.bz2

echo "Successfully deployed to Anaconda.org."
exit 0
