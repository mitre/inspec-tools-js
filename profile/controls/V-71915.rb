control "V-71915" do
  title "When passwords are changed the number of repeating consecutive
characters must not be more than three characters."
  desc  "Use of a complex password helps to increase the time and resources
required to compromise the password. Password complexity, or strength, is a
measure of the effectiveness of a password in resisting attempts at guessing
and brute-force attacks.Password complexity is one factor of several that
determines how long it takes to crack a password. The more complex the
password, the greater the number of possible combinations that need to be
tested before the password is compromised."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000072-GPOS-00040"
  tag "gid": "V-71915"
  tag "rid": "SV-86539r2_rule"
  tag "stig_id": "RHEL-07-010180"
  tag "fix_id": "F-78267r2_fix"
  tag "cci": ["CCI-000195"]
  tag "nist": ["IA-5 (1) (b)", "Rev_4"]
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
  tag "check": "The \"maxrepeat\" option sets the maximum number of allowed
same consecutive characters in a new password.Check for the value of the
\"maxrepeat\" option in \"/etc/security/pwquality.conf\" with the following
command:# grep maxrepeat /etc/security/pwquality.conf maxrepeat = 3If the value
of \"maxrepeat\" is set to more than \"3\", this is a finding."
  tag "fix": "Configure the operating system to require the change of the
number of repeating consecutive characters when passwords are changed by
setting the \"maxrepeat\" option.Add the following line to
\"/etc/security/pwquality.conf conf\" (or modify the line to have the required
value):maxrepeat = 3"
end

