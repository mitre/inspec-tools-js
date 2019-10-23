control "V-72109" do
  title "All uses of the fchmodat command must be audited."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one.Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000458-GPOS-00203"
  tag "satisfies": ["SRG-OS-000458-GPOS-00203", "SRG-OS-000392-GPOS-00172",
"SRG-OS-000064-GPOS-00033"]
  tag "gid": "V-72109"
  tag "rid": "SV-86733r3_rule"
  tag "stig_id": "RHEL-07-030430"
  tag "fix_id": "F-78461r6_fix"
  tag "cci": ["CCI-000172"]
  tag "nist": ["AU-12 c", "Rev_4"]
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
  tag "check": "Verify the operating system generates audit records when
successful/unsuccessful attempts to use the \"fchmodat\" command occur.Check
the file system rules in \"/etc/audit/audit.rules\" with the following
command:Note: The output lines of the command are duplicated to cover both
32-bit and 64-bit architectures. Only the lines appropriate for the system
architecture must be present.# grep -iw fchmodat /etc/audit/audit.rules-a
always,exit -F arch=b32 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k
perm_mod-a always,exit -F arch=b64 -S fchmodat -F auid>=1000 -F
auid!=4294967295 -k perm_modIf there are no audit rules defined for the
\"fchmodat\" command, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"fchmodat\" command occur.Add or
update the following rule in \"/etc/audit/rules.d/audit.rules\":Note: The rules
are duplicated to cover both 32-bit and 64-bit architectures. Only the lines
appropriate for the system architecture must be configured.-a always,exit -F
arch=b32 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k perm_mod-a
always,exit -F arch=b64 -S fchmodat -F auid>=1000 -F auid!=4294967295 -k
perm_modThe audit daemon must be restarted for the changes to take effect."
end

