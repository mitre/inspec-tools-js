control "V-71855" do
  title "The cryptographic hash of system files and commands must match vendor
values."
  desc  "Without cryptographic integrity protections, system command and files
can be altered by unauthorized users without detection.Cryptographic mechanisms
used for protecting the integrity of information include, for example, signed
hash functions using asymmetric cryptography enabling distribution of the
public key to verify the hash information while maintaining the confidentiality
of the key used to generate the hash."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-71855"
  tag "rid": "SV-86479r2_rule"
  tag "stig_id": "RHEL-07-010020"
  tag "fix_id": "F-78207r1_fix"
  tag "cci": ["CCI-000663"]
  tag "nist": ["SA-7", "Rev_4"]
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
  tag "check": "Verify the cryptographic hash of system files and commands
match the vendor values.Check the cryptographic hash of system files and
commands with the following command:Note: System configuration files (indicated
by a \"c\" in the second column) are expected to change over time. Unusual
modifications should be investigated through the system audit log.# rpm -Va |
grep '^..5'If there is any output from the command for system binaries, this is
a finding."
  tag "fix": "Run the following command to determine which package owns the
file:# rpm -qf <filename>The package can be reinstalled from a yum repository
using the command:# sudo yum reinstall <packagename>Alternatively, the package
can be reinstalled from trusted media using the command:# sudo rpm -Uvh
<packagename>"
end

