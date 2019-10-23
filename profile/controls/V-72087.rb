control "V-72087" do
  title "The audit system must take appropriate action when the audit storage
volume is full."
  desc  "Taking appropriate action in case of a filled audit storage volume
will minimize the possibility of losing audit records."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000342-GPOS-00133"
  tag "gid": "V-72087"
  tag "rid": "SV-86711r2_rule"
  tag "stig_id": "RHEL-07-030320"
  tag "fix_id": "F-78439r3_fix"
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
  tag "check": "Verify the action the operating system takes if the disk the
audit records are written to becomes full.To determine the action that takes
place if the disk is full on the remote server, use the following command:#
grep -i disk_full_action /etc/audisp/audisp-remote.confdisk_full_action =
singleTo determine the action that takes place if the network connection fails,
use the following command:# grep -i network_failure_action
/etc/audisp/audisp-remote.confnetwork_failure_action = stopIf the value of the
\"network_failure_action\" option is not \"syslog\", \"single\", or \"halt\",
or the line is commented out, this is a finding.If the value of the
\"disk_full_action\" option is not \"syslog\", \"single\", or \"halt\", or the
line is commented out, this is a finding."
  tag "fix": "Configure the action the operating system takes if the disk the
audit records are written to becomes full.Uncomment or edit the
\"disk_full_action\" option in \"/etc/audisp/audisp-remote.conf\" and set it to
\"syslog\", \"single\", or \"halt\", such as the following
line:disk_full_action = singleUncomment the \"network_failure_action\" option
in \"/etc/audisp/audisp-remote.conf\" and set it to \"syslog\", \"single\", or
\"halt\"."
end

