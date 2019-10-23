control "V-72215" do
  title "The system must update the virus scan program every seven days or more
frequently."
  desc  "Virus scanning software can be used to protect a system from
penetration from computer viruses and to limit their spread through
intermediate systems.  The virus scanning software should be configured to
check for software and virus definition updates with a frequency no longer than
seven days. If a manual process is required to update the virus scan software
or definitions, it must be documented with the Information System Security
Officer (ISSO)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72215"
  tag "rid": "SV-86839r2_rule"
  tag "stig_id": "RHEL-07-032010"
  tag "fix_id": "F-78569r2_fix"
  tag "cci": ["CCI-001668"]
  tag "nist": ["SI-3 a", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Verify the system is using a virus scan program and the virus
definition file is less than seven days old.Check for the presence of \"McAfee
VirusScan Enterprise for Linux\" with the following command:# systemctl status
nailsnails - service for McAfee VirusScan Enterprise for Linux >  Loaded:
loaded
/opt/NAI/package/McAfeeVSEForLinux/McAfeeVSEForLinux-2.0.2.<build_number>;
enabled)>  Active: active (running) since Mon 2015-09-27 04:11:22 UTC;21 min
agoIf the \"nails\" service is not active, check for the presence of \"clamav\"
on the system with the following command:# systemctl status
clamav-daemon.socketsystemctl status clamav-daemon.socket  clamav-daemon.socket
- Socket for Clam AntiVirus userspace daemon     Loaded: loaded
(/lib/systemd/system/clamav-daemon.socket; enabled)     Active: active
(running) since Mon 2015-01-12 09:32:59 UTC; 7min agoIf \"McAfee VirusScan
Enterprise for Linux\" is active on the system, check the dates of the virus
definition files with the following command:# ls -al
/opt/NAI/LinuxShield/engine/dat/*.dat<need output>If the virus definition files
have dates older than seven days from the current date, this is a finding.If
\"clamav\" is active on the system, check the dates of the virus database with
the following commands:# grep -I databasedirectory
/etc/clamav.confDatabaseDirectory /var/lib/clamav# ls -al
/var/lib/clamav/*.cvd-rwxr-xr-x  1 root root      149156 Mar  5  2011
daily.cvdIf the database file has a date older than seven days from the current
date, this is a finding."
  tag "fix": "Update the virus scan software and virus definition files."
end

