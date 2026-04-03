# Russian YaWERTY For macOS

This project contains a native macOS keyboard layout file for a Russian `ЯВЕРТЫ` phonetic-style layout.

## Included

- `layouts/Russian-YaWERTY.keylayout`: the macOS keyboard layout
- `install.sh`: installs it for the current user

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

1. Log out of macOS and log back in.
2. Open `System Settings > Keyboard > Input Sources`.
3. Click `Edit` or `+`.
4. Find `Russian - ЯВЕРТЫ` under custom layouts / others and add it.

## Notes

- This layout targets ANSI Mac keyboards.
- Digits and common US punctuation stay in their usual places.
- Caps Lock uppercases Cyrillic letters.
