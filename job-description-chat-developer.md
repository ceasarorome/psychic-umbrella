# Job Posting: HIPAA-Compliant WordPress Chat Developer

## Overview
Medical practice needs a self-hosted chat widget to replace Deardoc. The widget will sit on a WordPress website, collect patient intake information through a scripted conversation, and push leads to Bitrix24 CRM.

**Non-negotiable: HIPAA compliance.** This handles PHI (patient names, phone, email, visit reasons, insurance). All work must be secure by design with audit logs and encryption.

---

## What You're Building
A chat widget that:
1. Embeds on WordPress site (plugin or embed code)
2. Guides patients through a scripted 10-question intake flow
3. Collects: name, phone + SMS consent, email, location, new/existing status, visit reason, insurance, preferred date
4. Pushes data to Bitrix24 via API/webhook as a new lead/contact
5. Sends staff a basic notification (email or dashboard alert)

**Out of scope:** No actual appointment booking, no EHR integration, no AI/freeform responses. This is a data collection tool only.

---

## Technical Requirements

| Component | Requirement |
|-----------|-------------|
| **Platform** | WordPress (PHP) or headless with WordPress-friendly embed |
| **Frontend** | Clean, accessible chat UI that matches current Deardoc experience |
| **Backend** | Secure API to receive/store/transmit data temporarily |
| **Bitrix24** | REST API integration to create leads with custom fields |
| **Security** | TLS 1.2+, encryption at rest, parameterized queries (no SQL injection), XSS/CSRF protection |
| **Data handling** | No long-term PHI storage on intermediate server—just pass-through to Bitrix24 |
| **Audit logging** | Log who accessed what data when (minimum necessary principle) |
| **Admin** | Simple dashboard to view conversation history with role-based access |

---

## HIPAA Compliance Requirements (Mandatory)

Before submitting a proposal, confirm you can deliver:

- [ ] **Encryption:** TLS 1.2+ in transit; AES-256 or equivalent at rest
- [ ] **Access controls:** Role-based authentication (not just "admin/admin")
- [ ] **Audit trails:** Timestamped logs of all PHI access with user identification
- [ ] **Session security:** Automatic timeouts, secure cookie handling
- [ ] **Input validation:** Sanitization of all patient inputs to prevent injection
- [ ] **BAA readiness:** Documentation of security controls (you don't sign the BAA, but we need to show vendors our system meets standards)
- [ ] **Data minimization:** Only collect and store what is necessary

**⚠️ PHI must never appear in:**
- Unencrypted database logs
- Error messages
- Email notifications to staff
- URL parameters
- Browser developer tools

---

## Conversation Flow (Script)

1. **Privacy notice banner** before chat starts
2. Greeting: "Hi! I'm [Name], your assistant at [Practice]. How can I help you today?"
3. Location selector (Englewood, etc.)
4. New or existing patient
5. Patient name
6. Phone number + SMS consent checkbox
7. Email address
8. Reason for visit (dropdown or text)
9. Insurance provider
10. Preferred appointment date/time preference
11. Confirmation message + privacy close

Each step validates input before proceeding.

---

## Integrations

**Bitrix24 CRM**
- Create new "Lead" or "Contact" on conversation complete
- Map fields: Name, Phone, Email, Location, Status, Visit Reason, Insurance, Preferred Date
- Custom field mapping if needed

**Optional: Email notifications**
Staff get simple alert: "New lead received. View in Bitrix24: [secure link]"
NO PHI in the email body.

---

## Deliverables

| Deliverable | Description |
|-------------|-------------|
| WordPress integration | Plugin or embed documentation |
| Database schema | If any intermediate storage needed |
| Bitrix24 webhook/API integration | Working lead creation |
| Admin dashboard | View conversation history, user management |
| Security documentation | Brief security assessment, data flow diagram |
| Deployment guide | Step-by-step setup for WordPress + Bitrix24 |
| Training materials | How to update conversation script, manage access |

---

## Current State

- Website: WordPress (platform confirmed, host TBD—may rebuild on our server)
- CRM: Bitrix24 (plan TBD for HIPAA compliance)
- Replacing: Deardoc (functional reference—they do the same thing but we want to own the data)

---

## Budget & Timeline

**Looking for estimates. Suggested range:**
- Simple MVP: $500–$1,500 (basic chat, Bitrix24 push, minimal dashboard)
- Full solution: $1,500–$3,000 (robust security, audit logs, polished UI, full documentation)

**Timeline:** 2–4 weeks for working prototype; 1 additional week for hardening + docs.

---

## Required in Your Proposal

Please include:

1. **Relevant experience:** Link to past chat widgets, WordPress plugins, or healthcare/CRM integrations
2. **HIPAA/security background:** Have you built PHI-handling systems before?
3. **Technical approach:** PHP/WordPress plugin? Headless with React? How do you handle encryption?
4. **Bitrix24 experience:** Confirm you've used their REST API
5. **Estimated cost & timeline:** Fixed-price preferred; hourly with cap acceptable
6. **Questions for me:** What do you need clarified?

---

## Preferred Qualifications

- Experience with WordPress plugin development (PHP, MySQL)
- REST API integration experience (Bitrix24, Salesforce, HubSpot, etc.)
- Security-conscious development practices (OWASP, input validation, secure auth)
- Healthcare or HIPAA-exposed project history (ideal, not required)
- Strong communication—can explain technical decisions to non-technical client

---

## Red Flags (This Project is NOT For You If)

❌ You've never heard of HIPAA
❌ You don't understand why plaintext emails with patient info are a problem
❌ You think "My code is secure because I tested it once"
❌ You're uncomfortable with documentation or security checklists
❌ You've never integrated with a CRM API

---

## Questions? Contact

[Your name and email here]

---

## Where to Post

- **Upwork:** Search "WordPress developer HIPAA" or "WordPress chat widget"
- **Toptal:** Higher quality, higher cost (~$60–$150/hr)
- **Codeable.io:** WordPress-specific vetted developers
- **LinkedIn:** Post in WordPress developer groups
- **GitHub:** Look for contributors to chat/CRM projects, message directly

---

## Pre-Screening Questions (for shortlisting)

When reviewing applications, ask:

1. "Have you worked with PHI or HIPAA-compliant systems before?"
2. "How would you prevent patient data from appearing in server logs?"
3. "What's your experience with Bitrix24 or similar CRM APIs?"
4. "Walk me through your security checklist for a healthcare chat widget."

Right answers touch on: encryption, input validation, audit logs, secure credential storage, never logging PHI.

