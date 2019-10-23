control "V-71927" do
  title "Passwords must be restricted to a 24 hours/1 day minimum lifetime."
  desc  "Enforcing a minimum password lifetime helps to prevent repeated
password changes to defeat the password reuse or history enforcement
requirement. If users are allowed to immediately and continually change their
password, the password could be repeatedly changed in a short period of time to
defeat the organization's policy regarding password reuse."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000075-GPOS-00043"
  tag "gid": "V-71927"
  tag "rid": "SV-86551r1_rule"
  tag "stig_id": "RHEL-07-010240"
  tag "fix_id": "F-78279r1_fix"
  tag "cci": ["CCI-000198"]
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
  tag "check": "Check whether the minimum time period between password changes
for each user account is one day or greater.# awk -F: '$4 < 1 {print $1}'
/etc/shadowIf any results are returned that are not associated with a system
account, this is a finding."
  tag "fix": "Configure non-compliant accounts to enforce a 24 hours/1 day
minimum password lifetime:# chage -m 1 [user]"
end

