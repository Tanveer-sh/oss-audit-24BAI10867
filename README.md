Open Source Audit Capstone Project
Student Name: Tanveer Sharma
Roll Number: 24BAI10867
Chosen Software: Apache HTTP Server (apache2)
Course: Open Source Software (OSS NGMC)

Project Overview:-
This repository contains the five shell scripts developed for the Open Source Audit capstone project. The project investigates the initial development stage of Apache HTTP Server including its licensing agreements and its current usage within Linux systems.

Scripts Description:-
Script 1 (system_identity.sh): The script presents Linux system information through its three components which include the distribution and kernel version and current user and system uptime and it specifies the operating system license.
Script 2 (package_inspector.sh): The script determines whether apache2 exists as an installed package in the system then extracts its current version and displays a philosophical statement through a case structure.
Script 3 (disk_permission_auditor.sh): The loop structure of this script moves through all system directories to gather size and permission information while it performs an inspection of the Apache configuration directory.
Script 4 (log_analyzer.sh): The software analyzes a log file to identify how often specific terms appear which include the term "error" and it shows all log entries that contain those terms.
Script 5 (manifesto_generator.sh): The system creates a customized open-source manifesto through an interactive question-and-answer process which it saves as a .txt document.
How to Run:-
Make all scripts executable: chmod +x *.sh

Execute individually: ./system_identity.sh ./package_inspector.sh ./disk_permission_auditor.sh ./log_analyzer.sh /var/log/syslog "error" ./manifesto_generator.sh

Dependencies:-
Bash shell requires installation on any system which uses Debian or Ubuntu as its base operating system.
apache2 installation is essential because it enables Script 2 and Script 3 to perform their verification functions.
