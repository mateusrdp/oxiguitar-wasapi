# oxiguitar-wasapi

The WASAPI audio output plugin for [OxiGuitar](https://github.com/mateusrdp/oxiguitar), a free, open-source guitar tablature and score viewer, editor and player for Windows, macOS and Linux. It plays OxiGuitar's sound through WASAPI, the sound system of Windows.

In plain words: OxiGuitar works out the sound, and an output plugin hands it to the operating system's sound system on time, batch after batch. Every system has its own sound system, so each gets its own plugin. The [manual](https://mateusrdp.github.io/oxiguitar-wasapi/) explains latency and buffers.

- Plugin file `audio-wasapi.oxp`, id `oxiguitar.audio-wasapi`, Windows only (x86_64 and ARM64).
- It shares its code with the other outputs, oxiguitar-pipewire, oxiguitar-alsa and oxiguitar-coreaudio: a stream on one of cpal's hosts, in `oxiguitar-audio-cpal`, which lives in the OxiGuitar repository and is tagged with the SDK.
- It plays sound only on your machine: it uploads and downloads nothing.

## Manual

The manual is at <https://mateusrdp.github.io/oxiguitar-wasapi/>. Its source is in [docs/manual](docs/manual). It covers what the plugin is for, how it works, what it needs and how to install it.

## Install

Every [release](https://github.com/mateusrdp/oxiguitar-wasapi/releases) holds a zip per Windows processor (x86_64 and ARM64), a per-user installer (no administrator needed) for each, and a `SHA256SUMS` file. The [manual's install page](https://mateusrdp.github.io/oxiguitar-wasapi/install.html) says which one to use and how to keep it updated. The plugin needs OxiGuitar 0.11 or later (plugin interface 1.4).

## Build and test

Rust 1.99 or later from [rustup](https://rustup.rs). The plugin SDK comes from OxiGuitar's repository by git tag (`v0.11.0`); nothing of OxiGuitar's is on crates.io.

```sh
cargo test          # unit tests, and the contract suite on the built .oxp file
./build-oxp.sh      # (from Git Bash) dist/audio-wasapi-VERSION-SYSTEM-ARCH.oxp
python3 scripts/test-all.py   # every test, as the manual's Testing page says
```

## History

This plugin lived in the OxiGuitar repository until its version 0.11.0. Its history came along; an issue number such as `mateusrdp/oxiguitar#123` in an old commit message is in that repository.

## Credits

Built on [cpal](https://github.com/RustAudio/cpal) (Apache-2.0) and Microsoft's [windows-rs](https://github.com/microsoft/windows-rs), through OxiGuitar's shared `oxiguitar-audio-cpal` layer, and OxiGuitar's plugin SDK. Thanks to the RustAudio community. The manual's [Credits](https://mateusrdp.github.io/oxiguitar-wasapi/credits.html) page lists every project with its authors and licence. Thank you to all of them.

## Licence

GPL-3.0-or-later. See LICENSE. Contributions are welcome under the same terms; see [CONTRIBUTING.md](CONTRIBUTING.md).
