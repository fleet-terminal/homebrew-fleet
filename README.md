# Fleet Terminal — Homebrew tap

```sh
brew tap fleet-terminal/fleet
brew install --cask fleet-terminal
```

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
