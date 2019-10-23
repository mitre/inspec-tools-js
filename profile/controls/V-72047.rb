control "V-72047" do
  title "All world-writable directories must be group-owned by root, sys, bin,
or an application group."
  desc  "If a world-writable directory has the sticky bit set and is not
group-owned by a privileged Group Identifier (GID), unauthorized users may be
able to modify files created by others.The only authorized public directories
are those temporary directories supplied with the system or those designed to
be temporary file repositories. The setting is normally reserved for
directories used by the system and by users for temporary file storage, (e.g.,
/tmp), and for directories requiring global read/write access."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72047"
  tag "rid": "SV-86671r3_rule"
  tag "stig_id": "RHEL-07-021030"
  tag "fix_id": "F-78399r1_fix"
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
  tag "check": "Verify all world-writable directories are group-owned by root,
sys, bin, or an application group.Check the system for world-writable
directories with the following command:Note: The value after -fstype must be
replaced with the filesystem type. XFS is used as an example.# find / -xdev
-perm -002 -type d -fstype xfs -exec ls -lLd {} \\;drwxrwxrwt 2 root root 40
Aug 26 13:07 /dev/mqueuedrwxrwxrwt 2 root root 220 Aug 26 13:23
/dev/shmdrwxrwxrwt 14 root root 4096 Aug 26 13:29 /tmpIf any world-writable
directories are not owned by root, sys, bin, or an application group associated
with the directory, this is a finding."
  tag "fix": "Change the group of the world-writable directories to root with
the following command:# chgrp root <directory>"
end

