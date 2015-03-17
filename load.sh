#!/bin/bash
#
# Load the DPAC Gaia module
load_dpac() {
    # Files to be loaded
    declare -a files=(
    )
    
    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
    done
}

load_dpac
unset load_dpac
