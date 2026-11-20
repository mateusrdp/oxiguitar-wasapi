# Installing

You need OxiGuitar first: [its manual](https://mateusrdp.github.io/oxiguitar/) says how to get it. This page is about the WASAPI audio output plugin.

## From a release

Each release on the [releases page](https://github.com/mateusrdp/oxiguitar-wasapi/releases) has a zip for each Windows processor (x86_64 and ARM64), a setup program for each that installs for you alone (no administrator password), and a `SHA256SUMS` file to check the downloads against. Take the file that matches your system.

## Copying the file yourself

A plugin is a single file ending in `.oxp`. Unzip the release for your system and put `audio-wasapi.oxp` in your plugins folder:

| System | Your plugins folder |
| --- | --- |
| Windows | `%APPDATA%\OxiGuitar\plugins\` |

Start OxiGuitar again. **Tools → Plugins…** lists what it found. The same menu switches a plugin off, and deleting the file removes it.
