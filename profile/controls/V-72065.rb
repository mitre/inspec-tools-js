control "V-72065" do
  title "The system must use a separate file system for /tmp (or equivalent)."
  desc  "The use of separate file systems for different paths can protect the
system from failures resulting from a file system becoming full or failing."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72065"
  tag "rid": "SV-86689r1_rule"
  tag "stig_id": "RHEL-07-021340"
  tag "fix_id": "F-78417r1_fix"
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
for \"/tmp\".Check that a file system/partition has been created for \"/tmp\"
with the following command:# systemctl is-enabled tmp.mountenabledIf the
\"tmp.mount\" service is not enabled, this is a finding."
  tag "fix": "Start the \"tmp.mount\" service with the following command:#
systemctl enable tmp.mount"
end

