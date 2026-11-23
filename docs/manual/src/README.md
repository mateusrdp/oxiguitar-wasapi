# WASAPI audio output plugin

This plugin is what gets OxiGuitar's sound out of your speakers or headphones on Windows. It hands the finished sound to WASAPI (the Windows Audio Session API), the sound system of Windows since Vista.

It uploads nothing and downloads nothing. It only plays sound on your computer.

On Windows you need an output plugin: without one OxiGuitar can't play. This is the one to take.

## What an audio output does

OxiGuitar works out the sound of a song as a stream of numbers, about 48,000 of them a second for each speaker. Something has to hand those numbers to the sound card, in small batches, always on time: if a batch is late, you hear a click or a gap. That is the job of the operating system's sound system, and of this plugin, which connects OxiGuitar to it.

Two words come up when people talk about this:

- **Latency** is the delay between OxiGuitar sending sound and you hearing it. For playing back a song it hardly matters, because the cursor is moved to match what you hear; it matters for anything you play along live.
- **The buffer** is how much sound is handed over at a time. A bigger buffer is safer against clicks on a busy computer, at the cost of more latency.

Every operating system has its own sound system, and each needs its own code. OxiGuitar keeps each in a plugin of its own, so you install only the one your system uses.

[How to use it](use-cases.md) shows where to pick the device.
