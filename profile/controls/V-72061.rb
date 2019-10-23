control "V-72061" do
  title "The system must use a separate file system for /var."
  desc  "The use of separate file systems for different paths can protect the
system from failures resulting from a file system becoming full or failing."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72061"
  tag "rid": "SV-86685r1_rule"
  tag "stig_id": "RHEL-07-021320"
  tag "fix_id": "F-78413r1_fix"
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
  tag "check": "Verify that a separate file system/partition has been created
for \"/var\".Check that a file system/partition has been created for \"/var\"
with the following command:# grep /var /etc/fstabUUID=c274f65f    /var
          ext4    noatime,nobarrier        1 2If a separate entry for \"/var\"
is not in use, this is a finding."
  tag "fix": "Migrate the \"/var\" path onto a separate file system."
end

