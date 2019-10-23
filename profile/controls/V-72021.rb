control "V-72021" do
  title "All local interactive user home directories must be group-owned by the
home directory owners primary group."
  desc  "If the Group Identifier (GID) of a local interactive user’s home
directory is not the same as the primary GID of the user, this would allow
unauthorized access to the user’s files, and users that share the same group
may not be able to access files that they legitimately should."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72021"
  tag "rid": "SV-86645r4_rule"
  tag "stig_id": "RHEL-07-020650"
  tag "fix_id": "F-78373r1_fix"
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
users is group-owned by that user’s primary GID.Check the home directory
assignment for all local interactive users on the system with the following
command:# ls -ld $(egrep ':[0-9]{4}' /etc/passwd | cut -d: -f6)-rwxr-x--- 1
smithj users 18 Mar 5 17:06 /home/smithjCheck the user's primary group with the
following command:# grep users /etc/groupusers:x:250:smithj,jonesj,jacksonsIf
the user home directory referenced in \"/etc/passwd\" is not group-owned by
that user’s primary GID, this is a finding."
  tag "fix": "Change the group owner of a local interactive user’s home
directory to the group found in \"/etc/passwd\". To change the group owner of a
local interactive user’s home directory, use the following command:Note: The
example will be for the user \"smithj\", who has a home directory of
\"/home/smithj\", and has a primary group of users.# chgrp users /home/smithj"
end

