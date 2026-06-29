# Kylindc Tap

A Homebrew tap with custom formulae and casks.

## Formulae

- **bbdown** - Command-line Bilibili video downloader
- **tvault** - Touch ID–secured environment variable vault for macOS

## How do I install these formulae?

`brew install kylindc/tap/<formula>`

Or `brew tap kylindc/tap` and then `brew install <formula>`.

### Install tvault

```bash
brew tap kylindc/tap
brew install tvault
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "kylindc/tap"
brew "tvault"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
