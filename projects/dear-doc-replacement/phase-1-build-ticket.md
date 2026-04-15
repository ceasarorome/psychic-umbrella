# Phase 1 Build Ticket

## Goal
Create the first working local version of the DearDoc replacement as a WordPress plugin shell.

## Scope for this phase

Build only the foundation:
- plugin scaffold
- shortcode
- frontend chat shell
- scripted intake questions in vanilla JS
- admin settings page
- REST submission stub
- Bitrix24 service stub
- README

Do not build yet:
- real Bitrix24 sync
- real PHI storage strategy
- audit logs
- email notifications
- role-based access refinement
- production deployment

## Definition of done

This phase is done when:
- plugin activates locally
- `[prism_chat_widget]` renders the widget
- the full scripted flow works in the browser
- settings page saves values
- REST endpoint accepts a sanitized POST payload
- response is visible in the browser console or UI
- README explains local setup

## Suggested order

1. Plugin bootstrap and autoloading/includes
2. Shortcode + template render
3. CSS/JS enqueue logic
4. Frontend flow and validation
5. Settings page
6. REST endpoint
7. Bitrix24 stub
8. README cleanup

## Notes

Keep this phase intentionally small.
The win here is getting a local end-to-end skeleton working, not solving every production detail yet.
