control "V-72011" do
  title "All local interactive users must have a home directory assigned in the
/etc/passwd file."
  desc  "If local interactive users are not assigned a valid home directory,
there is no place for the storage and control of files they should own."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72011"
  tag "rid": "SV-86635r1_rule"
  tag "stig_id": "RHEL-07-020600"
  tag "fix_id": "F-78363r1_fix"
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
  tag "check": "Verify local interactive users on the system have a home
directory assigned.Check for missing local interactive user home directories
with the following command:# pwck -ruser 'lp': directory '/var/spool/lpd' does
not existuser 'news': directory '/var/spool/news' does not existuser 'uucp':
directory '/var/spool/uucp' does not existuser 'smithj': directory
'/home/smithj' does not existAsk the System Administrator (SA) if any users
found without home directories are local interactive users. If the SA is unable
to provide a response, check for users with a User Identifier (UID) of 1000 or
greater with the following command:# cut -d: -f 1,3 /etc/passwd | egrep
\":[1-4][0-9]{2}$|:[0-9]{1,2}$\"If any interactive users do not have a home
directory assigned, this is a finding."
  tag "fix": "Assign home directories to all local interactive users that
currently do not have a home directory assigned."
end

