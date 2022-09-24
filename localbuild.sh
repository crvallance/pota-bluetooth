#!/bin/bash
sudo apt-get install build-essential debhelper devscripts
dpkg-buildpackage -us -uc -b