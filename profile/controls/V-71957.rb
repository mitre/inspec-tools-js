control "V-71957" do
  title "The operating system must not allow users to override SSH environment
variables."
  desc  "Failure to restrict system access to authenticated users negatively
impacts operating system security."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00229"
  tag "gid": "V-71957"
  tag "rid": "SV-86581r2_rule"
  tag "stig_id": "RHEL-07-010460"
  tag "fix_id": "F-78309r2_fix"
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
  tag "check": "Verify the operating system does not allow users to override
environment variables to the SSH daemon.Check for the value of the
\"PermitUserEnvironment\" keyword with the following command:# grep -i
permituserenvironment /etc/ssh/sshd_configPermitUserEnvironment noIf the
\"PermitUserEnvironment\" keyword is not set to \"no\", is missing, or is
commented out, this is a finding."
  tag "fix": "Configure the operating system to not allow users to override
environment variables to the SSH daemon.Edit the \"/etc/ssh/sshd_config\" file
to uncomment or add the line for \"PermitUserEnvironment\" keyword and set the
value to \"no\":PermitUserEnvironment noThe SSH service must be restarted for
changes to take effect."
end

