# homebrew-twindesk

Homebrew tap for [twindesk](https://github.com/MartinFerret/twindesk): run multiple Claude Desktop accounts side by side, each in its own window, with its own session.

Not affiliated with Anthropic.

## Install

```sh
brew tap MartinFerret/twindesk
brew install twindesk
```

Or in one line:

```sh
brew install MartinFerret/twindesk/twindesk
```

Then:

```sh
twindesk doctor
```

## Update

```sh
brew update
brew upgrade twindesk
```

## Uninstall

```sh
brew uninstall twindesk
brew untap MartinFerret/twindesk
```

Uninstalling the formula does not delete your profiles. To remove them, run `twindesk remove <profile> --all` before uninstalling, or delete the data directory shown by `twindesk doctor` (`~/Library/Application Support/twindesk`).

## Requirements

- macOS with Claude Desktop installed in `/Applications` or `~/Applications`
- No other dependencies: twindesk is a single Bash script (it uses the `sqlite3` that ships with macOS)

Linux and Windows are not installed through this tap. See the main repository for other install methods and their support status.

## What this formula does

- Installs the `twindesk` script into Homebrew's `bin`
- Nothing else: no background service, no changes to Claude Desktop, no network access

## Troubleshooting

- `twindesk: command not found` after install: run `brew doctor` and make sure Homebrew's `bin` directory is in your `PATH`.
- `brew install` fails on the checksum: the release archive may have been re-uploaded. Open an issue here with the exact error.
- Anything about twindesk itself (login flow, profiles, limitations): open an issue on the [main repository](https://github.com/MartinFerret/twindesk/issues), not here.

## Releasing a new version

Maintainer notes are in [RELEASING.md](https://github.com/MartinFerret/twindesk/blob/main/RELEASING.md) in the main repository. In short: tag a release there, compute the new SHA-256 of the release archive, update `Formula/twindesk.rb`, commit and push here.

## License

MIT. See [LICENSE](LICENSE).
