control "V-72023" do
  title "All files and directories contained in local interactive user home
directories must be owned by the owner of the home directory."
  desc  "If local interactive users do not own the files in their directories,
unauthorized users may be able to access them. Additionally, if files are not
owned by the user, this could be an indication of system compromise."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72023"
  tag "rid": "SV-86647r1_rule"
  tag "stig_id": "RHEL-07-020660"
  tag "fix_id": "F-78375r1_fix"
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
  tag "check": "Verify all files and directories in a local interactive user’s
home directory are owned by the user.Check the owner of all files and
directories in a local interactive user’s home directory with the following
command:Note: The example will be for the user \"smithj\", who has a home
directory of \"/home/smithj\".# ls -lLR /home/smithj-rw-r--r-- 1 smithj smithj
18 Mar  5 17:06 file1-rw-r--r-- 1 smithj smithj 193 Mar  5 17:06
file2-rw-r--r-- 1 smithj smithj 231 Mar  5 17:06 file3If any files are found
with an owner different than the home directory user, this is a finding."
  tag "fix": "Change the owner of a local interactive user’s files and
directories to that owner. To change the owner of a local interactive user’s
files and directories, use the following command:Note: The example will be for
the user smithj, who has a home directory of \"/home/smithj\".# chown smithj
/home/smithj/<file or directory>"
end

