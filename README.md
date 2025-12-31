# AFK Surrender

A simple World of Warcraft addon that makes `/afk` surrender in arenas instead of leaving the game.

## Features

- Overrides the `/afk` command behavior in arenas
- Calls `C_PvP.SurrenderArena()` when used in arena
- Falls back to normal AFK behavior in other game modes
- Lightweight with no dependencies

## Installation

### Via Wago Addons
1. Install the [Wago Addons](https://addons.wago.io/) app
2. Search for "AfkSurrender"
3. Click Install

### Manual Installation
1. Download the latest release from the [Releases page](https://github.com/jsmenzies/afksurrender/releases)
2. Extract the ZIP file
3. Copy the `AfkSurrender` folder to your `World of Warcraft/_retail_/Interface/AddOns/` directory
4. Restart WoW or reload UI with `/reload`

## Usage

Simply type `/afk` while in an arena to surrender instead of going AFK.

## Compatibility

- **WoW Version:** 11.0.2+ (The War Within)
- **Dependencies:** None

## Development

### Creating a New Release

Releases are automated via GitHub Actions and trigger on every push to main:

1. Update the version in `AfkSurrender.toc` if needed
2. Make your changes and commit them
3. Push to main:
   ```bash
   git push
   ```
4. GitHub Actions will automatically:
   - Package the addon
   - Create a GitHub release
   - Wago will automatically detect and publish the new version

## Author

**Jsm**

## License

All rights reserved.
