control "V-71949" do
  title "Users must re-authenticate for privilege escalation."
  desc  "Without re-authentication, users may access resources or perform tasks
for which they do not have authorization. When operating systems provide the
capability to escalate a functional capability, it is critical the user
reauthenticate."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000373-GPOS-00156"
  tag "satisfies": ["SRG-OS-000373-GPOS-00156", "SRG-OS-000373-GPOS-00157",
"SRG-OS-000373-GPOS-00158"]
  tag "gid": "V-71949"
  tag "rid": "SV-86573r2_rule"
  tag "stig_id": "RHEL-07-010350"
  tag "fix_id": "F-78301r2_fix"
  tag "cci": ["CCI-002038"]
  tag "nist": ["IA-11", "Rev_4"]
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
  tag "check": "Verify the operating system requires users to reauthenticate
for privilege escalation.Check the configuration of the \"/etc/sudoers\" and
\"/etc/sudoers.d/*\" files with the following command:# grep -i authenticate
/etc/sudoers /etc/sudoers.d/*If any line is found with a \"!authenticate\" tag,
this is a finding."
  tag "fix": "Configure the operating system to require users to reauthenticate
for privilege escalation.Check the configuration of the \"/etc/sudoers\" and
\"/etc/sudoers.d/*\" files with the following command:Remove any occurrences of
\"!authenticate\" tags in the file."
end

