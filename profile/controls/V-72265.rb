control "V-72265" do
  title "The SSH daemon must use privilege separation."
  desc  "SSH daemon privilege separation causes the SSH process to drop root
privileges when not needed, which would decrease the impact of software
vulnerabilities in the unprivileged section."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72265"
  tag "rid": "SV-86889r2_rule"
  tag "stig_id": "RHEL-07-040460"
  tag "fix_id": "F-78619r2_fix"
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
  tag "check": "Verify the SSH daemon performs privilege separation.Check that
the SSH daemon performs privilege separation with the following command:# grep
-i usepriv /etc/ssh/sshd_configUsePrivilegeSeparation sandboxIf the
\"UsePrivilegeSeparation\" keyword is set to \"no\", is missing, or the retuned
line is commented out, this is a finding."
  tag "fix": "Uncomment the \"UsePrivilegeSeparation\" keyword in
\"/etc/ssh/sshd_config\" (this file may be named differently or be in a
different location if using a version of SSH that is provided by a third-party
vendor) and set the value to \"sandbox\" or \"yes\":UsePrivilegeSeparation
sandboxThe SSH service must be restarted for changes to take effect."
end

