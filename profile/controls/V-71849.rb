control "V-71849" do
  title "The file permissions, ownership, and group membership of system files
and commands must match the vendor values."
  desc  "Discretionary access control is weakened if a user or group has access
permissions to system files and directories greater than the default."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000257-GPOS-00098"
  tag "satisfies": ["SRG-OS-000257-GPOS-00098", "SRG-OS-000278-GPOS-00108"]
  tag "gid": "V-71849"
  tag "rid": "SV-86473r2_rule"
  tag "stig_id": "RHEL-07-010010"
  tag "fix_id": "F-78201r3_fix"
  tag "cci": ["CCI-001494", "CCI-001496"]
  tag "nist": ["AU-9", "AU-9 (3)", "Rev_4"]
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
  tag "check": "Verify the file permissions, ownership, and group membership of
system files and commands match the vendor values.Check the file permissions,
ownership, and group membership of system files and commands with the following
command:# rpm -Va | grep '^.M'If there is any output from the command
indicating that the ownership or group of a system file or command, or a system
file, has permissions less restrictive than the default, this is a finding."
  tag "fix": "Run the following command to determine which package owns the
file:# rpm -qf <filename>Reset the permissions of files within a package with
the following command:#rpm --setperms <packagename>Reset the user and group
ownership of files within a package with the following command:#rpm --setugids
<packagename>"
end

