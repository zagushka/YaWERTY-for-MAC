# Russian YaWERTY For macOS

![YaW Logo](assets/yaw-logo.svg)

This project contains a native macOS keyboard layout for a Russian `ЯВЕРТЫ` phonetic-style layout.

## Main mapping

The top letter row is:

`Q W E R T Y U I O P [ ]` -> `я в е р т ы у и о п ш щ`

The home row is:

`A S D F G H J K L ; ' \`` -> `а с д ф г х й к л ; ' ч`

The bottom row is:

`Z X C V B N M , . /` -> `з ь ц ж б н м , . /`

Extra letters:

- `Option + \`` -> `ё`
- `Option + Shift + \`` -> `Ё`
- `Option + '` -> `ъ`
- `Option + Shift + '` -> `Ъ`

## Install

Run:

```bash
./install.sh
```

Then:

1. Log out and back in, or restart macOS.
2. Open `System Settings > Keyboard > Input Sources`.
3. Click `Edit` or `+`.
4. Add `Russian - ЯВЕРТЫ`.

## Uninstall

Run:

```bash
./uninstall.sh
```

Then remove `Russian - ЯВЕРТЫ` from `System Settings > Keyboard > Input Sources` if it still appears, and log out and back in or restart macOS.

## Notes

- This layout targets ANSI Mac keyboards.
- Digits and common US punctuation stay in their usual places.
- Standard macOS shortcuts are preserved while Russian input is active.
- Caps Lock uppercases Cyrillic letters.
