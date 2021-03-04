#!/bin/sh
git clone https://github.com/AcademySoftwareFoundation/OpenColorIO.git
cd OpenColorIO
git checkout v2.0.0
mkdir build
cd build
cmake .. -G Ninja -DOCIO_BUILD_PYTHON=OFF -DOCIO_BUILD_APPS=OFF -DOCIO_BUILD_TESTS=OFF -DOCIO_BUILD_GPU_TESTS=OFF -DOCIO_BUILD_DOCS=OFF
ninja
