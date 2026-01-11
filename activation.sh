#!/bin/bash
# Pixi activation script for ROS2 workspace
# This script is automatically sourced when entering the pixi environment

# Source ROS2 setup from conda environment if it exists
if [ -f "$CONDA_PREFIX/setup.bash" ]; then
    source "$CONDA_PREFIX/setup.bash"
fi

# Set colcon defaults file path (relative to workspace root)
export COLCON_DEFAULTS_FILE="$PIXI_PROJECT_ROOT/defaults.yaml"

# Source local workspace setup if it exists (uses .pixi/install for isolation)
if [ -f ".pixi/install/setup.bash" ]; then
    source .pixi/install/setup.bash
fi

# Set up useful aliases for development
alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git push'
