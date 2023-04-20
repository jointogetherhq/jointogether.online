---
layout: page
title: Information security
description:
  Keeping your data and the data of your members secure is at the very core of the Join Together platform. From our infrastructure to our software design, through to our working practices, security and data safety is central to every thing we do.
footer-order: "3"
---

Keeping your data and the data of your members secure is at the very core of the Join Together platform. From our infrastructure to our software design, through to our working practices, security and data safety is central to every thing we do.

## How we take care of your data

### ISO 27001 data centres

Join Together’s infrastructure runs on EU-based servers provided by Heroku, which is built on Amazon Web Services (AWS). Heroku provides a Platform as a Service (PaaS) that comes with exceptional security out of the box.

Heroku’s physical infrastructure is hosted and managed within Amazon’s secure data centres. Amazon continually manages risk and undergoes regular assessments to ensure compliance with industry standards.

Amazon’s data centre operations have been accredited under ISO 27001, SOC 1 and SOC 2/SSAE 16/ISAE 3402 (Previously SAS 70 Type II), PCI Level 1, FISMA Moderate and Sarbanes-Oxley (SOX).

Learn more about Heroku and AWS security:
- [Heroku Security](https://www.heroku.com/policy/security)
- [AWS Security](https://aws.amazon.com/security/)
- [AWS Compliance](https://aws.amazon.com/compliance/)

### Physical security

We do not have dedicated data centres as our infrastructure is cloud-based. Physical security to the servers our platform runs on and to your data is managed by [AWS security certifications](https://aws.amazon.com/compliance/iso-27001-faqs/).

### Data storage and encryption at rest

Your data is [encrypted at rest](https://devcenter.heroku.com/articles/heroku-postgres-production-tier-technical-characterization#data-encryption) in our databases using AES-256 block-level storage encryption.

### Passwords

Where passwords are necessary, they are stored in our database using Bcrypt, a complex one-way password hashing algorithm that provides protection over common attacks such as rainbow tables and brute-force search attacks.

### Encryption in transit

All communication between you, users using your join form, and any integrations with your internal CRM systems traverse the Internet via encrypted HTTPS traffic using TLS v1.3 where supported. We support older browsers with TLS v1.2.

This encryption during communication ensures information cannot be read or manipulated by unauthorised third parties.

### Backups and data retention

We back up your data both daily and weekly. We retain daily backups for 7 days. We retain weekly backups for 4 weeks.

By default we redact all user-submitted personal data in incomplete or unsubmitted applications after 14 days. All user-submitted personal data in submitted applications is redacted 60 days after you have retrieved them for processing. If you feel that these retention periods do not suit you, you can choose to change them at any time.

### Access to data

Join Together staff are granted access to systems and data based on their role in the company or on an as-needed basis. SSO and 2FA are used to ensure access is as secure as possible.

Access to user data by Join Together staff is only used to assist with support and to resolve customer issues.

When working on a support issue we do our best to respect your privacy and the privacy of your members as much as possible and only access the minimum data needed to resolve your issue.

### Communications Security

All Join Together’s transactional emails are sent using Postmark and are encrypted using TLS, ensuring messages are encrypted in transit to remote mail servers and ISPs who support TLS.

Our mail servers are configured to use [DKIM](https://postmarkapp.com/guides/dkim) and [SPF](https://postmarkapp.com/guides/spf) allowing us to control our domain’s reputation, reducing the risk of email spoofing and ensuring a high deliverability rate.

## How we keep our code secure

### Automatic static code analysis

We  employ a continuous integration process that is automatically run against all changes made to the codebase before it can be released. This includes automated static code analysis configured to identify potential vulnerabilities in the code. We also run automated checks to alert us to vulnerabilities in any of the dependent libraries within the application.

### Quality Assurance (QA)

New features and code changes go through a series of stages before they are released to the live system to maintain quality and safety:

- a second member of staff reviews high value code changes to identify bugs and potential issues before releases are approved
- We ship new features to sandboxed staging or review environments for testing and verification separately from the main production system
- We maintain automated tests to ensure the system continues to operate as expected

## How we secure our business

### Mobile device management

All hardware devices (desktops, laptops, phones) that Join Together staff use are encrypted to ensure that if stolen or lost they do not present a security risk.

### Password managers and policy

To ensure an acceptable level of password security, we have an existing password policy in place. Passwords that are too generic are not allowed while the use of unique passwords per website is strongly advised. We also encourage the use of password managers, for example 1Password, that help make it easier and safer for you to keep track of your credentials.

### Multi-factor authentication

The use of multi-factor authentication (MFA) is enforced on all the main services Join Together relies on, including Heroku, GitHub and Postmark.

The Join Together platform itself enforces MFA for on-platform access to application data is required by your staff.
