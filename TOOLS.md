# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.

## OpenClaw Admin Notes

- Do not run `openclaw gateway restart` from the live main chat unless CJ explicitly accepts a likely reply interruption.
- Prefer editing `~/.openclaw/openclaw.json` and relying on gateway hot reload.
- After config edits, run `/Users/CJ/.openclaw/workspace/main/scripts/openclaw-safe-config-check.sh` to confirm `RPC probe: ok` instead of bouncing the gateway.
- If a restart is truly required, warn first and treat the current reply as interruptible.
