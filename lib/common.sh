RED=$'\e[1;31m'
GREEN=$'\e[1;32m'
YELLOW=$'\e[1;33m'
BLUE=$'\e[1;34m'
PINK=$'\e[1;35m'

COLOR_END=$'\e[0m'

function getInputWithDefault() {
    local msg=$1
    local preValue=$2
    local __resultvar=$3
    local __clr=$4
    
    if [ -z "$__clr" ]; then

        __clr=$RED

    fi

    read -p $__clr"$msg""[Default:"$((preValue+1))"]:"$COLOR_END __newValue
    
    if [ -z "$__newValue" ]; then

        __newValue=$((preValue+1))

    fi

    eval $__resultvar="'$__newValue'"
}