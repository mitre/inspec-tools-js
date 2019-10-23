control "V-72019" do
  title "All local interactive user home directories must be owned by their
respective users."
  desc  "If a local interactive user does not own their home directory,
unauthorized users could access or modify the user's files, and the users may
not be able to access their own files."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72019"
  tag "rid": "SV-86643r4_rule"
  tag "stig_id": "RHEL-07-020640"
  tag "fix_id": "F-78371r1_fix"
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
  tag "check": "Verify the assigned home directory of all local interactive
users on the system exists.Check the home directory assignment for all local
interactive users on the system with the following command:# ls -ld $(egrep
':[0-9]{4}' /etc/passwd | cut -d: -f6)-rwxr-x--- 1 smithj users 18 Mar 5 17:06
/home/smithjIf any home directories referenced in \"/etc/passwd\" are not owned
by the interactive user, this is a finding."
  tag "fix": "Change the owner of a local interactive user’s home directories
to that owner. To change the owner of a local interactive user’s home
directory, use the following command:Note: The example will be for the user
smithj, who has a home directory of \"/home/smithj\".# chown smithj
/home/smithj"
end

