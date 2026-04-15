# Developer Evaluation Scorecard

Use this to compare candidates for the DearDoc replacement build.

## Knockout questions

Reject the candidate immediately if any of these are true:

- They do not mention security or HIPAA at all.
- They suggest emailing PHI in plaintext.
- They want to put API credentials in frontend JavaScript.
- They have never built a WordPress plugin or similar CMS integration.
- They cannot explain how they would keep PHI out of logs.
- They have no plan for server-side validation.

## Weighted scoring rubric

Score each category from 1 to 5, then multiply by the weight.

| Category | Weight | What good looks like |
|---|---:|---|
| HIPAA/security awareness | 30 | Talks clearly about encryption, access control, auditability, PHI minimization, and vendor risk |
| WordPress/plugin experience | 20 | Has built plugins, admin pages, settings flows, and backend handlers before |
| API integration experience | 15 | Has real experience with CRM APIs, webhooks, retries, and field mapping |
| Communication/documentation | 10 | Explains technical choices clearly, writes clean proposals, asks smart questions |
| UI/accessibility quality | 10 | Understands responsive UI, input validation, and practical patient usability |
| Timeline realism | 10 | Gives a believable scope, milestones, and risks instead of vague promises |
| Price sanity | 5 | Price matches the complexity; not suspiciously cheap or wildly inflated |

## Simple scoring table

| Candidate | Security 30 | WP 20 | API 15 | Comms 10 | UI 10 | Timeline 10 | Price 5 | Total 100 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Candidate A |  |  |  |  |  |  |  |  |
| Candidate B |  |  |  |  |  |  |  |  |
| Candidate C |  |  |  |  |  |  |  |  |

## Suggested interpretation

- 85-100: strong hire candidate
- 70-84: viable, but probe weak spots in the call
- 50-69: risky unless budget is tiny and scope is prototype only
- under 50: pass

## 15-minute screening call script

Ask these in order:

1. "Have you built systems that handle patient or otherwise sensitive data before?"
2. "Where would patient data travel from browser to CRM in this build?"
3. "How would you keep PHI out of logs, emails, and browser-visible places?"
4. "Would you build this as a WordPress plugin, an embedded app, or something else, and why?"
5. "How would you handle a failed Bitrix24 API call so the lead is not lost?"
6. "What would you need from me in week one to move fast?"

## What strong answers sound like

### Security
A strong candidate mentions several of these without prompting:
- TLS in transit
- encryption at rest where applicable
- server-side validation and sanitization
- prepared queries or ORM safety
- no PHI in logs or plain emails
- restricted admin access
- audit trail or at least access logging
- vendor review and BAA awareness

### Architecture
A strong candidate can explain:
- why credentials belong server-side
- how the widget talks to WordPress
- how WordPress talks to Bitrix24
- what happens when Bitrix24 is down
- what, if anything, gets stored locally and for how long

### Delivery
A strong candidate gives:
- a milestone-based timeline
- a fixed-price or capped-scope proposal
- clear deliverables
- documentation and handoff plan

## My recommendation on selection

Prefer the candidate who is strongest on security and clarity, not the one with the flashiest UI pitch.
For this project, quiet competence beats cleverness.
