#!/bin/bash

PATH_TO_MAVSDK="$HOME/Documents/Repos/MAVSDK"
PATH_TO_TOOLS="$HOME/Documents/Repos/ardupilot-mavsdk/"

docker run -it --rm \
        -p 14550:14540/udp \
        -v ${PATH_TO_MAVSDK}:/home/user/MAVSDK \
        -v ${PATH_TO_TOOLS}:/home/user/tools \
        khedar/mavsdk-ubuntu-20.04-apm-sitl-rover-4.1.2 bash
        # khedar/mavsdk-ubuntu-20.04-px4-sitl-v1.11 bash