control "V-72257" do
  title "The SSH private host key files must have mode 0600 or less permissive."
  desc  "If an unauthorized user obtains the private SSH host key file, the
host could be impersonated."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72257"
  tag "rid": "SV-86881r1_rule"
  tag "stig_id": "RHEL-07-040420"
  tag "fix_id": "F-78611r3_fix"
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
  tag "check": "Verify the SSH private host key files have mode \"0600\" or
less permissive.The following command will find all SSH private key files on
the system:# find / -name '*ssh_host*key'Check the mode of the private host key
files under \"/etc/ssh\" file with the following command:# ls -lL
/etc/ssh/*key-rw-------  1 root  wheel  668 Nov 28 06:43
ssh_host_dsa_key-rw-------  1 root  wheel  582 Nov 28 06:43
ssh_host_key-rw-------  1 root  wheel  887 Nov 28 06:43 ssh_host_rsa_keyIf any
file has a mode more permissive than \"0600\", this is a finding."
  tag "fix": "Configure the mode of SSH private host key files under
\"/etc/ssh\" to \"0600\" with the following command:# chmod 0600
/etc/ssh/ssh_host*key"
end

