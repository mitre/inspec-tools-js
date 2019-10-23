control "V-72239" do
  title "The SSH daemon must not allow authentication using RSA rhosts
authentication."
  desc  "Configuring this setting for the SSH daemon provides additional
assurance that remote logon via SSH will require a password, even in the event
of misconfiguration elsewhere."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72239"
  tag "rid": "SV-86863r3_rule"
  tag "stig_id": "RHEL-07-040330"
  tag "fix_id": "F-78593r4_fix"
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
  tag "check": "Verify the SSH daemon does not allow authentication using RSA
rhosts authentication.To determine how the SSH daemon's
\"RhostsRSAAuthentication\" option is set, run the following command:# grep
RhostsRSAAuthentication /etc/ssh/sshd_configRhostsRSAAuthentication noIf the
value is returned as \"yes\", the returned line is commented out, or no output
is returned, this is a finding."
  tag "fix": "Configure the SSH daemon to not allow authentication using RSA
rhosts authentication.Add the following line in \"/etc/ssh/sshd_config\", or
uncomment the line and set the value to \"no\":RhostsRSAAuthentication noThe
SSH service must be restarted for changes to take effect."
end

