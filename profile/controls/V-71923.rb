control "V-71923" do
  title "User and group account administration utilities must be configured to
store only encrypted representations of passwords."
  desc  "Passwords need to be protected at all times, and encryption is the
standard method for protecting passwords. If passwords are not encrypted, they
can be plainly read (i.e., clear text) and easily compromised. Passwords
encrypted with a weak algorithm are no more protected than if they are kept in
plain text."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000073-GPOS-00041"
  tag "gid": "V-71923"
  tag "rid": "SV-86547r2_rule"
  tag "stig_id": "RHEL-07-010220"
  tag "fix_id": "F-78275r1_fix"
  tag "cci": ["CCI-000196"]
  tag "nist": ["IA-5 (1) (c)", "Rev_4"]
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
  tag "check": "Verify the user and group account administration utilities are
configured to store only encrypted representations of passwords. The strength
of encryption that must be used to hash passwords for all accounts is
\"SHA512\".Check that the system is configured to create \"SHA512\" hashed
passwords with the following command:# cat /etc/libuser.conf | grep -i
sha512crypt_style = sha512If the \"crypt_style\" variable is not set to
\"sha512\", is not in the defaults section, or does not exist, this is a
finding."
  tag "fix": "Configure the operating system to store only SHA512 encrypted
representations of passwords.Add or update the following line in
\"/etc/libuser.conf\" in the [defaults] section: crypt_style = sha512"
end

