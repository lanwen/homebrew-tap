# Homebrew Tap

[![homebrew tap lanwen][homebrew_tap_badge]][homebrew_tap_url]

## Formulae

Currently published formulae:

- `frmtr` - Java formatter: [lanwen/frmtr](https://github.com/lanwen/frmtr)

Install directly:

```sh
brew install lanwen/tap/frmtr
```

Or tap first and trust the formula explicitly:

```sh
brew tap lanwen/tap
brew trust --formula lanwen/tap/frmtr
brew install frmtr
```

For one-off installs, prefer the fully-qualified install because Homebrew trusts only the requested formula.

## Casks

No casks are currently published in this tap.

If casks are added later, prefer fully-qualified installation:

```sh
brew install --cask lanwen/tap/<cask>
```

Or tap first and trust the cask explicitly:

```sh
brew tap lanwen/tap
brew trust --cask lanwen/tap/<cask>
brew install --cask <cask>
```

Trust the whole tap only if you are comfortable with Homebrew loading all current and future formulae, casks, and external commands from it.

## Documentation

See `brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).

[homebrew_tap_badge]: https://img.shields.io/badge/brew%20tap-lanwen/tap-orange?style=flat-square&logo=Homebrew&color=FBB040
[homebrew_tap_url]: https://github.com/lanwen/homebrew-tap
