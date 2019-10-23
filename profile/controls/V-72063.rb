control "V-72063" do
  title "The system must use a separate file system for the system audit data
path."
  desc  "The use of separate file systems for different paths can protect the
system from failures resulting from a file system becoming full or failing."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72063"
  tag "rid": "SV-86687r5_rule"
  tag "stig_id": "RHEL-07-021330"
  tag "fix_id": "F-78415r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
  tag "check": "Determine if the \"/var/log/audit\" path is a separate file
system.# grep /var/log/audit /etc/fstabIf no result is returned,
\"/var/log/audit\" is not on a separate file system, and this is a finding."
  tag "fix": "Migrate the system audit data path onto a separate file system."
end

