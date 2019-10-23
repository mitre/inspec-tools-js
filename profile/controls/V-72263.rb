control "V-72263" do
  title "The SSH daemon must perform strict mode checking of home directory
configuration files."
  desc  "If other users have access to modify user-specific SSH configuration
files, they may be able to log on to the system as another user."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72263"
  tag "rid": "SV-86887r2_rule"
  tag "stig_id": "RHEL-07-040450"
  tag "fix_id": "F-78617r4_fix"
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
  tag "check": "Verify the SSH daemon performs strict mode checking of home
directory configuration files.The location of the \"sshd_config\" file may vary
if a different daemon is in use.Inspect the \"sshd_config\" file with the
following command:# grep -i strictmodes /etc/ssh/sshd_configStrictModes yesIf
\"StrictModes\" is set to \"no\", is missing, or the returned line is commented
out, this is a finding."
  tag "fix": "Uncomment the \"StrictModes\" keyword in \"/etc/ssh/sshd_config\"
(this file may be named differently or be in a different location if using a
version of SSH that is provided by a third-party vendor) and set the value to
\"yes\":StrictModes yesThe SSH service must be restarted for changes to take
effect."
end

