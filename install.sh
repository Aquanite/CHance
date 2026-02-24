#!/usr/bin/env sh
set -e

PREFIX=${PREFIX:-/usr/local}
BIN_DIR="$PREFIX/bin"
SHARE_DIR="$PREFIX/share/chance"
STDLIB_DIR="$SHARE_DIR/stdlib"
RUNTIME_DIR="$SHARE_DIR/runtime"

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CHANCECODE_DIR="${1:-$SCRIPT_DIR/../ChanceCode}"
if [ -n "$CHANCECODE_DIR" ]; then
  if cd "$CHANCECODE_DIR" >/dev/null 2>&1; then
    CHANCECODE_DIR=$(pwd)
    cd "$SCRIPT_DIR"
  fi
fi

DEFAULT_RUNTIME="$RUNTIME_DIR/runtime.cclib"
DEFAULT_STDLIB="$STDLIB_DIR/stdlib.cclib"

printf "Building...\n"
CHANCE_DEFAULT_RUNTIME="$DEFAULT_RUNTIME" \
CHANCE_DEFAULT_STDLIB="$DEFAULT_STDLIB" \
"$SCRIPT_DIR/build.sh"

if [ -n "$CHANCECODE_DIR" ] && [ -f "$CHANCECODE_DIR/build.sh" ]; then
  printf "Building ChanceCode...\n"
  (cd "$CHANCECODE_DIR" && ./build.sh)
fi

CHANCEC_BIN="$SCRIPT_DIR/build/chancec"
if [ ! -x "$CHANCEC_BIN" ]; then
  echo "error: chancec not found at $CHANCEC_BIN"
  exit 1
fi

printf "Rebuilding runtime and stdlib with built compiler...\n"
(cd "$SCRIPT_DIR/runtime" && "$CHANCEC_BIN" runtime.ceproj)
(cd "$SCRIPT_DIR/src/stdlib" && "$CHANCEC_BIN" stdlib.ceproj)

printf "Installing to %s...\n" "$PREFIX"
mkdir -p "$BIN_DIR" "$STDLIB_DIR" "$RUNTIME_DIR"

install -m 755 "$CHANCEC_BIN" "$BIN_DIR/chancec"

if [ -f "$SCRIPT_DIR/src/stdlib/stdlib.cclib" ]; then
  install -m 644 "$SCRIPT_DIR/src/stdlib/stdlib.cclib" "$STDLIB_DIR/stdlib.cclib"
fi

if [ -f "$SCRIPT_DIR/runtime/runtime.cclib" ]; then
  install -m 644 "$SCRIPT_DIR/runtime/runtime.cclib" "$RUNTIME_DIR/runtime.cclib"
fi

if [ -x "$SCRIPT_DIR/build/chancecodec" ]; then
  install -m 755 "$SCRIPT_DIR/build/chancecodec" "$BIN_DIR/chancecodec"
elif [ -x "$CHANCECODE_DIR/build/chancecodec" ]; then
  install -m 755 "$CHANCECODE_DIR/build/chancecodec" "$BIN_DIR/chancecodec"
fi

printf "Done.\n"
