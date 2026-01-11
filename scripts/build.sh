#!/bin/bash
# Build script for ROS2 workspace that properly configures Python paths for CMake

PYTHON_EXEC=$(which python3)

colcon build \
    --build-base .pixi/build \
    --install-base .pixi/install \
    --symlink-install \
    --cmake-args \
    -DPython3_EXECUTABLE="$PYTHON_EXEC" \
    -DPython_EXECUTABLE="$PYTHON_EXEC"
