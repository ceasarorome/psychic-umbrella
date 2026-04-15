# Dear Doc Replacement - MVP Brief

Date: 2026-04-12

## Model recommendation

For this project:
- Use **GPT-5.4** for planning, product decisions, architecture, and specs.
- Use **`codex-coding` (`gpt-5.1-codex`)** for implementation work and code changes.

Recommended workflow:
1. define the product and constraints in normal chat
2. draft the PRD and feature list
3. hand implementation tasks to `codex-coding`

## Product brief

**Working idea:** AI New Patient Goals Intake

### Problem
You are paying for Dear Doc to collect patient goals before a new patient visit. It works, but it is expensive and likely more rigid than needed.

### Goal
Build a lighter in-house replacement that:
- asks patients what they want help with
- captures symptoms, priorities, and goals
- summarizes that cleanly for the visit
- reduces software spend

### Core outcome
Before the encounter, the provider gets a short structured brief:
- why the patient is coming in
- top goals
- key symptoms or concerns
- relevant history or blockers
- suggested follow-up questions

## Feature breakdown

### Patient-facing
- intake link on website
- mobile-friendly form or chat-style flow
- basic identity fields
- chief concern
- goals for visit
- symptom history
- prior treatments or what has already been tried
- optional freeform note
- consent / disclaimer

### AI layer
- rewrite messy patient input into clean clinical language
- extract:
  - primary complaint
  - goals
  - symptom timeline
  - failed attempts
  - emotional tone or urgency
- generate visit-prep summary
- flag unclear or incomplete answers

### Provider-facing
- one-page intake summary
- raw patient answers preserved underneath
- simple status: submitted / reviewed / booked
- export or paste into chart workflow

## MVP build plan

### MVP scope
Keep version 1 small.

**Frontend**
- simple intake form or conversational intake page

**Backend**
- save submission
- call LLM to summarize
- store both raw and structured output

**Output**
- email, dashboard, or internal review page with:
  - patient name
  - goals
  - main concerns
  - concise intake summary

## Suggested stack

Fastest path:
- Next.js or a simple React frontend
- Supabase or Postgres
- OpenAI for summarization
- optional n8n / Make / webhook automation

## MVP flow

1. patient opens intake link
2. completes guided questions
3. submission is saved
4. AI creates structured summary
5. summary goes to provider or admin dashboard

## Suggested first-pass intake questions

- What brings you in today?
- What are you hoping will improve?
- What symptoms or concerns matter most right now?
- When did this start?
- What have you already tried?
- What would a successful outcome look like for you?

## Recommendation

Build **form-first, AI-second**.

That means:
- start with a reliable structured intake form
- use AI to clean, summarize, and organize
- do not start with a fully open-ended chatbot

This will be faster, cheaper, and safer.

## Best next steps

1. write the PRD
2. define the exact intake questions and branching logic
3. design the MVP architecture and database schema
4. hand the first implementation ticket to `codex-coding`
