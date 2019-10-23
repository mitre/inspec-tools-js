control "V-72059" do
  title "A separate file system must be used for user home directories (such as
/home or an equivalent)."
  desc  "The use of separate file systems for different paths can protect the
system from failures resulting from a file system becoming full or failing."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72059"
  tag "rid": "SV-86683r1_rule"
  tag "stig_id": "RHEL-07-021310"
  tag "fix_id": "F-78411r1_fix"
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
for non-privileged local interactive user home directories.Check the home
directory assignment for all non-privileged users (those with a UID greater
than 1000) on the system with the following command:#cut -d: -f 1,3,6,7
/etc/passwd | egrep \":[1-4][0-9]{3}\" | tr \":\" \"\\t\"adamsj /home/adamsj
/bin/bashjacksonm /home/jacksonm /bin/bashsmithj /home/smithj /bin/bashThe
output of the command will give the directory/partition that contains the home
directories for the non-privileged users on the system (in this example, /home)
and users’ shell. All accounts with a valid shell (such as /bin/bash) are
considered interactive users.Check that a file system/partition has been
created for the non-privileged interactive users with the following
command:Note: The partition of /home is used in the example.# grep /home
/etc/fstabUUID=333ada18    /home                   ext4
noatime,nobarrier,nodev  1 2If a separate entry for the file system/partition
that contains the non-privileged interactive users' home directories does not
exist, this is a finding."
  tag "fix": "Migrate the \"/home\" directory onto a separate file
system/partition."
end

