control "V-71931" do
  title "Existing passwords must be restricted to a 60-day maximum lifetime."
  desc  "Any password, no matter how complex, can eventually be cracked.
Therefore, passwords need to be changed periodically. If the operating system
does not limit the lifetime of passwords and force users to change their
passwords, there is the risk that the operating system passwords could be
compromised."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000076-GPOS-00044"
  tag "gid": "V-71931"
  tag "rid": "SV-86555r1_rule"
  tag "stig_id": "RHEL-07-010260"
  tag "fix_id": "F-78283r1_fix"
  tag "cci": ["CCI-000199"]
  tag "nist": ["IA-5 (1) (d)", "Rev_4"]
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
  tag "check": "Check whether the maximum time period for existing passwords is
restricted to 60 days.# awk -F: '$5 > 60 {print $1}' /etc/shadowIf any results
are returned that are not associated with a system account, this is a finding."
  tag "fix": "Configure non-compliant accounts to enforce a 60-day maximum
password lifetime restriction.# chage -M 60 [user]"
end

