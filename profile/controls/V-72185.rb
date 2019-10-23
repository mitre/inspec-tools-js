control "V-72185" do
  title "All uses of the pam_timestamp_check command must be audited."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000471-GPOS-00215"
  tag "gid": "V-72185"
  tag "rid": "SV-86809r3_rule"
  tag "stig_id": "RHEL-07-030810"
  tag "fix_id": "F-78539r3_fix"
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
successful/unsuccessful attempts to use the \"pam_timestamp_check\" command
occur. Check the auditing rules in \"/etc/audit/audit.rules\" with the
following command:# grep -i \"/sbin/pam_timestamp_check\"
/etc/audit/audit.rules-a always,exit -F path=/sbin/pam_timestamp_check -F
perm=x -F auid>=1000 -F auid!=4294967295  -k privileged-pam  If the command
does not return any output, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"pam_timestamp_check\" command
occur. Add or update the following rule in \"/etc/audit/rules.d/audit.rules\":
-a always,exit -F path=/sbin/pam_timestamp_check -F perm=x -F auid>=1000 -F
auid!=4294967295 -k privileged-pamThe audit daemon must be restarted for the
changes to take effect."
end

