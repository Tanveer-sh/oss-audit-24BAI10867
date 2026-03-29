# Open Source Audit Capstone Project

**Student Name:** Tanveer Sharma
**Roll Number:** 24BAI10867
**Chosen Software:** Apache HTTP Server (`apache2`)
**Course:** Open Source Software (OSS NGMC)

## Project Overview
This repository contains the five shell scripts developed for the Open Source Audit capstone project. The project explores the origin, licensing, and Linux footprint of the Apache HTTP Server.

## Scripts Description
1. **Script 1 (system_identity.sh):** Introduces the Linux system (distro, kernel, user, uptime) and states the OS license.
2. **Script 2 (package_inspector.sh):** Checks if `apache2` is installed, retrieves its version, and outputs a philosophy note using a case statement.
3. **Script 3 (disk_permission_auditor.sh):** Loops through system directories to report sizes and permissions, and audits the Apache config directory.
4. **Script 4 (log_analyzer.sh):** Parses a log file to count keyword occurrences (e.g., "error") and outputs the matching lines.
5. **Script 5 (manifesto_generator.sh):** Interactively asks questions to generate a personalized open-source manifesto saved to a `.txt` file.

## How to Run
1. Make all scripts executable:
   chmod +x *.sh

2. Execute individually:
   ./system_identity.sh
   ./package_inspector.sh
   ./disk_permission_auditor.sh
   ./log_analyzer.sh /var/log/syslog "error"
   ./manifesto_generator.sh

## Dependencies
* Bash shell on a Debian/Ubuntu-based Linux system.
* apache2 installed (for Script 2 and Script 3 checks).
