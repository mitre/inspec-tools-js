control "V-72017" do
  title "All local interactive user home directories must have mode 0750 or
less permissive."
  desc  "Excessive permissions on local interactive user home directories may
allow unauthorized access to user files by other users."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72017"
  tag "rid": "SV-86641r2_rule"
  tag "stig_id": "RHEL-07-020630"
  tag "fix_id": "F-78369r1_fix"
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
users has a mode of \"0750\" or less permissive.Check the home directory
assignment for all non-privileged users on the system with the following
command:Note: This may miss interactive users that have been assigned a
privileged User Identifier (UID). Evidence of interactive use may be obtained
from a number of log files containing system logon information.# ls -ld $(egrep
':[0-9]{4}' /etc/passwd | cut -d: -f6)-rwxr-x--- 1 smithj users  18 Mar  5
17:06 /home/smithjIf home directories referenced in \"/etc/passwd\" do not have
a mode of \"0750\" or less permissive, this is a finding."
  tag "fix": "Change the mode of interactive user’s home directories to
\"0750\". To change the mode of a local interactive user’s home directory, use
the following command:Note: The example will be for the user \"smithj\".# chmod
0750 /home/smithj"
end

