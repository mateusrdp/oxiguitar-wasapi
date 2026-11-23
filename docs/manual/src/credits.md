# Credits

Thank you to the people whose work this plugin is built on.

## Code we use

| Project | Authors | What it does here | Licence |
| --- | --- | --- | --- |
| [OxiGuitar's plugin SDK](https://github.com/mateusrdp/oxiguitar) (`oxiguitar-plugin`, `oxiguitar-audio-cpal`, and `oxiguitar-plugin-test` for the tests) | Mateus Rocha de Paula and the OxiGuitar contributors | The plugin interface, and the layer all four output plugins share | MIT OR Apache-2.0 for the SDK; GPL-3.0-or-later for the shared layer |
| [cpal](https://github.com/RustAudio/cpal) | The RustAudio contributors | Devices and the audio stream, on every system | Apache-2.0 |
| [windows-rs](https://github.com/microsoft/windows-rs) | Microsoft and contributors | Talks to WASAPI | MIT OR Apache-2.0 |
| [Rust](https://www.rust-lang.org/) and its standard library | The Rust Project | Everything else | MIT OR Apache-2.0 |

## The system

[WASAPI](https://learn.microsoft.com/en-us/windows/win32/coreaudio/wasapi), by Microsoft: the sound system itself, part of Windows. The plugin only calls it.

## Tools

| Tool | Use |
| --- | --- |
| [mdBook](https://github.com/rust-lang/mdBook) | Builds this manual |
| [cargo-deny](https://github.com/EmbarkStudios/cargo-deny) | Checks the licences of everything we build with |

## Thanks

To the RustAudio community for cpal, which turns four very different sound systems into one, and to the people behind WASAPI.
