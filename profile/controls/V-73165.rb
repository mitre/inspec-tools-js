control "V-73165" do
  title "The operating system must generate audit records for all account
creations, modifications, disabling, and termination events that affect
/etc/group."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one.Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000004-GPOS-00004"
  tag "gid": "V-73165"
  tag "rid": "SV-87817r2_rule"
  tag "stig_id": "RHEL-07-030871"
  tag "fix_id": "F-79611r3_fix"
  tag "cci": ["CCI-000018", "CCI-000172", "CCI-001403", "CCI-002130"]
  tag "nist": ["AC-2 (4)", "AU-12 c", "AC-2 (4)", "AC-2 (4)", "Rev_4"]
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
  tag "check": "Verify the operating system must generate audit records for all
account creations, modifications, disabling, and termination events that affect
\"/etc/group\".Check the auditing rules in \"/etc/audit/audit.rules\" with the
following command:# grep /etc/group /etc/audit/audit.rules-w /etc/group -p wa
-k audit_rules_usergroup_modificationIf the command does not return a line, or
the line is commented out, this is a finding."
  tag "fix": "Configure the operating system to generate audit records for all
account creations, modifications, disabling, and termination events that affect
\"/etc/group\".Add or update the following rule in
\"/etc/audit/rules.d/audit.rules\":-w /etc/group -p wa -k identityThe audit
daemon must be restarted for the changes to take effect."
end

