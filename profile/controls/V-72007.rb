control "V-72007" do
  title "All files and directories must have a valid owner."
  desc  "Unowned files and directories may be unintentionally inherited if a
user is assigned the same User Identifier \"UID\" as the UID of the un-owned
files."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72007"
  tag "rid": "SV-86631r2_rule"
  tag "stig_id": "RHEL-07-020320"
  tag "fix_id": "F-78359r1_fix"
  tag "cci": ["CCI-002165"]
  tag "nist": ["AC-3 (4)", "Rev_4"]
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
  tag "check": "Verify all files and directories on the system have a valid
owner.Check the owner of all files and directories with the following
command:Note: The value after -fstype must be replaced with the filesystem
type. XFS is used as an example.# find / -fstype xfs -nouserIf any files on the
system do not have an assigned owner, this is a finding."
  tag "fix": "Either remove all files and directories from the system that do
not have a valid user, or assign a valid user to all unowned files and
directories on the system with the \"chown\" command:# chown <user> <file>"
end

