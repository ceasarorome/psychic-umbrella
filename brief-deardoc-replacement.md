# Project Brief: Deardoc Replacement Chat Agent

## Objective
Replace the current Deardoc chat widget with a self-hosted, HIPAA-compliant, scripted lead capture system on our WordPress website.

---

## Compliance Requirements (HIPAA)
| Requirement | Implementation |
|-------------|----------------|
| **Encryption in transit** | TLS 1.2+ for all data transmission |
| **Encryption at rest** | Database and file storage encrypted |
| **Access controls** | Role-based access; minimum necessary principle |
| **Audit logging** | All PHI access logged with user ID and timestamp |
| **Data retention** | Defined policy for conversation archive/delete cycles |
| **BAA required** | Signed Business Associate Agreements with any third-party vendors (hosting, chat platform, CRM, email service) |
| **Staff training** | Annual HIPAA training for staff with dashboard access |
| **Email notifications** | Either exclude PHI or route through HIPAA-compliant secure email (e.g., Paubox, LuxSci). Do not send unencrypted PHI via standard SMTP. |

**⚠️ Critical:** Review all integrations for BAA compliance before implementation.

---

## Current System Behavior (to replicate)
- Embedded chat widget on practice website
- Scripted conversation flow that guides patients through intake
- Collects: name, phone (with SMS consent), email, location, new/existing status, visit reason, insurance, preferred date
- Emails staff a summary including transcript and contact details
- Staff review/respond manually (no automated booking)

---

## Technical Requirements

| Component | Specification |
|-----------|---------------|
| **Platform** | WordPress plugin or embeddable widget |
| **Hosting** | HIPAA-compliant hosting (BAA signed); current host access is uncertain due to unresponsive former designer |
| **CRM Integration** | Bitrix24 with HIPAA BAA (if available) or on-premise deployment |
| **Notifications** | HIPAA-compliant secure email OR notifications without PHI + secure dashboard link only |
| **Chat flow** | Tightly scripted, not freeform—fixed question sequence matching current experience |
| **Scope** | Lead capture only; no EHR/scheduler API integration |

---

## Conversation Flow (Scripted Sequence)
1. **Consent notice** - Privacy/ HIPAA Notice before chat begins
2. Greeting + "How can I help?"
3. Location selection (Englewood, etc.)
4. New or existing patient
5. Patient name
6. Phone number + SMS consent opt-in
7. Email address
8. Reason for visit
9. Insurance provider
10. Preferred appointment date/time
11. **Privacy close** - Confirm data use notice, no guaranteed reply timeline

---

## PHI Data Inventory
Fields collected that constitute PHI and require protection:
- Full name
- Phone number
- Email address
- Medical information: visit reason, insurance provider
- Patient status (new/existing) + location = identifiable relationship to practice

---

## Deliverables with Compliance Checkpoints

| Deliverable | Compliance Checkpoint |
|-------------|----------------------|
| WordPress-compatible chat widget (embeddable) | Self-hosted or BAA-signed SaaS only |
| Configurable conversation script | Includes required privacy notice |
| Encrypted data storage | At-rest encryption verified |
| Staff notification system | Secure email or PHI-minimized alerts |
| Access control system | Role-based authentication, audit logging |
| Bitrix24 lead integration | BAA signed or on-premise deployment |
| Admin dashboard for conversation history | Access logging, automatic session timeout |
| **Documentation** | Security assessment, data flow diagram, incident response plan |
| **Staff training plan** | Annual HIPAA training documented |

---

## Out of Scope
- Direct EHR/scheduler booking (requires ModMed API—future phase, requires additional BAA)
- Freeform/unscripted AI responses
- Long-term PHI archival (define retention period separately)

---

## Acceptance Criteria
- [ ] Patient can complete intake conversation from start to finish
- [ ] All PHI encrypted in transit and at rest
- [ ] BAA documentation for all third-party services
- [ ] Staff receive notification within 60 seconds (secure method or PHI-free summary)
- [ ] Lead appears in Bitrix24 with access logging
- [ ] Widget authenticated access only; no public PHI endpoints
- [ ] Security assessment documentation completed
- [ ] Staff HIPAA training completed before go-live

---

## Risk Notes
- **Deardoc replacement:** Ensure data migration from old system is secure (encrypted transfer, chain-of-custody)
- **WordPress security:** Keep core/plugins/patched; consider Web Application Firewall (WAF)
- **Email compliance:** Current Deardoc emails contain PHI in plaintext—this is a compliance gap to close, not replicate
