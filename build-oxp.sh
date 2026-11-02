#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 2026 Mateus Rocha de Paula and the OxiGuitar contributors
#
# Builds the plugin's release file for the system this runs on:
#
#   dist/audio-wasapi-VERSION-SYSTEM-ARCH.oxp
#
# such as dist/audio-wasapi-0.1.0-windows-x86_64.oxp, named the way OxiGuitar's plugins
# are (docs/plugins/template in github.com/mateusrdp/oxiguitar). This plugin is for Windows only (its manifest says so): run it from Git Bash.
# .github/workflows/release.yml runs it.

set -euo pipefail

# The plugin's file name, and the crate's library name (the package's name
# with _ for -).
NAME=audio-wasapi
LIBRARY=oxiguitar_audio_wasapi_plugin

cd "$(dirname "$0")"
version="$(cargo pkgid)"
version="${version##*[#@]}"
host="$(rustc -vV | sed -n 's/^host: //p')"
mkdir -p dist

build() {
    cargo rustc --locked --release --features oxp --crate-type cdylib "$@"
}

case "$host" in
    *windows*)
        arch="${host%%-*}"
        [[ "$arch" == aarch64 ]] && arch=arm64
        out="dist/$NAME-$version-windows-$arch.oxp"
        build
        cp "target/release/$LIBRARY.dll" "$out"
        ;;
    *)
        echo "build-oxp.sh: $NAME is for Windows only (this is $host)" >&2
        exit 1
        ;;
esac
echo "$out"
