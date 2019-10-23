control "V-73163" do
  title "The audit system must take appropriate action when there is an error
sending audit records to a remote system."
  desc  "Taking appropriate action when there is an error sending audit records
to a remote system will minimize the possibility of losing audit records."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000342-GPOS-00133"
  tag "gid": "V-73163"
  tag "rid": "SV-87815r2_rule"
  tag "stig_id": "RHEL-07-030321"
  tag "fix_id": "F-79609r1_fix"
  tag "cci": ["CCI-001851"]
  tag "nist": ["AU-4 (1)", "Rev_4"]
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
  tag "check": "Verify the action the operating system takes if there is an
error sending audit records to a remote system.Check the action that takes
place if there is an error sending audit records to a remote system with the
following command:# grep -i network_failure_action
/etc/audisp/audisp-remote.confnetwork_failure_action = stopIf the value of the
\"network_failure_action\" option is not \"syslog\", \"single\", or \"halt\",
or the line is commented out, this is a finding."
  tag "fix": "Configure the action the operating system takes if there is an
error sending audit records to a remote system.Uncomment the
\"network_failure_action\" option in \"/etc/audisp/audisp-remote.conf\" and set
it to \"syslog\", \"single\", or \"halt\".network_failure_action = single"
end

