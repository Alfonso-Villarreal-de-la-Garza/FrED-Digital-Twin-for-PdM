#!/bin/bash

if [ ! -d "install" ]; then
  echo "First build..."
  colcon build
fi

source install/setup.bash
export GZ_SIM_RESOURCE_PATH=$GZ_SIM_RESOURCE_PATH:$(pwd)/src/fred_description
gz sim worlds/fred_world.sdf
