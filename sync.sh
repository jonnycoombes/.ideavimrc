#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

print_help() {
	echo 'Help!!'
}

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
		print_help
    exit
fi

cd "$(dirname "$0")"

main() {
	cp ./.ideavimrc ~
}

main "$@"
