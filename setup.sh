#!/bin/bash

# Global variable to store MOD value
MOD=${2:-mmiyoo}

# Function to build all libraries
build_all() {
	make config MOD="$MOD"
	make
}

# Function to build SDL2 library only
build_sdl2() {
	make clean
	make config MOD="$MOD"
	make sdl2
}

# Function to build virtual GPU (swiftshader) library only
build_gpu() {
	make clean
	make config MOD="$MOD"
	make gpu
}

# Function to build the example
build_example() {
	make example MOD="$MOD"
}

# Main script
case "$1" in
--all)
	build_all
	;;
--sdl2)
	build_sdl2
	;;
--gpu)
	build_gpu
	;;
--example)
	build_example
	;;
*)
	echo "Usage: $0 {--all|--sdl2|--gpu|--example} [MOD]"
	exit 1
	;;
esac
