control "V-71937" do
  title "The system must not have accounts configured with blank or null
passwords."
  desc  "If an account has an empty password, anyone could log on and run
commands with the privileges of that account. Accounts with empty passwords
should never be used in operational environments."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-71937"
  tag "rid": "SV-86561r2_rule"
  tag "stig_id": "RHEL-07-010290"
  tag "fix_id": "F-78289r2_fix"
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
  tag "check": "To verify that null passwords cannot be used, run the following
command: # grep nullok /etc/pam.d/system-auth-acIf this produces any output, it
may be possible to log on with accounts with empty passwords.If null passwords
can be used, this is a finding."
  tag "fix": "If an account is configured for password authentication but does
not have an assigned password, it may be possible to log on to the account
without authenticating.Remove any instances of the \"nullok\" option in
\"/etc/pam.d/system-auth-ac\" to prevent logons with empty passwords.Note: Any
updates made to \"/etc/pam.d/system-auth-ac\" may be overwritten by the
\"authconfig\" program. The \"authconfig\" program should not be used."
end

