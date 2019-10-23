control "V-72091" do
  title "The operating system must immediately notify the System Administrator
(SA) and Information System Security Officer (ISSO) (at a minimum) via email
when the threshold for the repository maximum audit record storage capacity is
reached."
  desc  "If security personnel are not notified immediately when the threshold
for the repository maximum audit record storage capacity is reached, they are
unable to expand the audit record storage capacity before records are lost."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000343-GPOS-00134"
  tag "gid": "V-72091"
  tag "rid": "SV-86715r1_rule"
  tag "stig_id": "RHEL-07-030340"
  tag "fix_id": "F-78443r1_fix"
  tag "cci": ["CCI-001855"]
  tag "nist": ["AU-5 (1)", "Rev_4"]
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
  tag "check": "Verify the operating system immediately notifies the SA and
ISSO (at a minimum) via email when the allocated audit record storage volume
reaches 75 percent of the repository maximum audit record storage
capacity.Check what action the operating system takes when the threshold for
the repository maximum audit record storage capacity is reached with the
following command:# grep -i space_left_action
/etc/audit/auditd.confspace_left_action = emailIf the value of the
\"space_left_action\" keyword is not set to \"email\", this is a finding."
  tag "fix": "Configure the operating system to immediately notify the SA and
ISSO (at a minimum) when the threshold for the repository maximum audit record
storage capacity is reached.Uncomment or edit the \"space_left_action\" keyword
in \"/etc/audit/auditd.conf\" and set it to \"email\".  space_left_action =
email"
end

