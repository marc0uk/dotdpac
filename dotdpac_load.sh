#!/bin/bash
#
# Load the DPAC Gaia module
load_dpac() {
    #
    # Module location (when enabled)
    local MODNAME=dotdpac
    local MODROOT=$DOT_MODS_ACTIVE/$MODNAME
    # Files to be loaded
    declare -a files=(
	$MODROOT/${MODNAME}_exports
	$MODROOT/${MODNAME}_aliases
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
