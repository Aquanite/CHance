#!/usr/bin/env sh
set -e

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CHANCECODE_DIR="${1:-}"

printf "Cleaning CEnhanced artifacts...\n"
rm -rf "$SCRIPT_DIR/build"
rm -f "$SCRIPT_DIR/src/stdlib/stdlib.cclib"
rm -f "$SCRIPT_DIR/runtime/runtime.cclib"

if [ -n "$CHANCECODE_DIR" ]; then
  if cd "$CHANCECODE_DIR" >/dev/null 2>&1; then
    CHANCECODE_DIR=$(pwd)
    cd "$SCRIPT_DIR"
    printf "Cleaning ChanceCode artifacts in %s...\n" "$CHANCECODE_DIR"
    rm -rf "$CHANCECODE_DIR/build"
  else
    echo "warning: ChanceCode dir not found: $CHANCECODE_DIR"
  fi
fi

printf "Done.\n"
