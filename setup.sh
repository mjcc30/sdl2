#!/bin/bash

# Global variable to store MOD value
MOD=${2:-mmiyoo}

# Function to log if success
function log_success() {
	echo -e "[\e[1;92mSUCCESS\e[0m] $*"
}

# Function to build all libraries
build_all() {
	make config MOD="$MOD" && log_success "config success"
	make && log_success "build all success"
}

# Function to build SDL2 library only
build_sdl2() {
	make clean && log_success "clean success"
	make config MOD="$MOD" && log_success "clean success"
	make sdl2 && log_success "build SDL2 success"
}

# Function to build virtual GPU (swiftshader) library only
build_gpu() {
	make clean && log_success "clean success"
	make config MOD="$MOD" && log_success "clean success"
	make gpu && log_success "build gpu success"
}

# Function to build the example
build_example() {
	make example MOD="$MOD" && log_success "build example success"
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
