#!/bin/bash

# Build mgs
/Applications/PICO-8.app/Contents/MacOS/pico8 jimbo.p8 -export dist/jimbo.p8.png

# Run mgs
/Applications/PICO-8.app/Contents/MacOS/pico8 -windowed 0 -run jimbo.p8 