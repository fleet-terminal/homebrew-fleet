# Fleet Terminal — Homebrew tap

```sh
brew trust fleet-terminal/fleet
brew tap fleet-terminal/fleet
brew install --cask fleet-terminal
```

**The order matters.** Homebrew refuses to load casks from third-party taps
until you trust them, and running `brew tap` first fails with `Error: Cannot tap
fleet-terminal/fleet: invalid syntax in tap!` — which looks like a broken tap
but only means "not trusted yet". Trust first and it is clean.

Prefer not to trust a stranger's tap? Reasonable. **[Download the dmg
instead](https://fleet-terminal.app/download)** — it is the same notarized
build. This tap exists for people who would rather manage apps through brew, and
it becomes unnecessary once Fleet is in `homebrew-cask` proper, where no trust
step applies.

**[Fleet Terminal](https://fleet-terminal.app)** is a native macOS terminal for
running many AI coding agents at once — one sidebar row per session with live
status, so you always know which one needs you. Works with Claude Code, Codex
and Antigravity.

macOS 14 or later · Apple silicon & Intel · notarized by Apple · free, no
account, no API key

## Notes

- Fleet updates itself, so the cask declares `auto_updates true` — `brew
  upgrade` deliberately leaves it alone rather than fighting the app's own
  updater. `brew upgrade --cask --greedy fleet-terminal` if you want brew to do
  it anyway.
- `brew uninstall --zap --cask fleet-terminal` also removes
  `~/.config/fleet-terminal` and the app's preferences.
- Versions are tracked from
  [`appcast.json`](https://dl.fleet-terminal.app/appcast.json), the same feed the
  app's own updater reads.

Bugs and questions about Fleet itself belong in
[fleet-terminal/fleet](https://github.com/fleet-terminal/fleet).
