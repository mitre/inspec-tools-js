control "V-71933" do
  title "Passwords must be prohibited from reuse for a minimum of five
generations."
  desc  "Password complexity, or strength, is a measure of the effectiveness of
a password in resisting attempts at guessing and brute-force attacks. If the
information system or application allows the user to consecutively reuse their
password when that password has exceeded its defined lifetime, the end result
is a password that is not changed per policy requirements."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000077-GPOS-00045"
  tag "gid": "V-71933"
  tag "rid": "SV-86557r2_rule"
  tag "stig_id": "RHEL-07-010270"
  tag "fix_id": "F-78285r2_fix"
  tag "cci": ["CCI-000200"]
  tag "nist": ["IA-5 (1) (e)", "Rev_4"]
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
  tag "check": "Verify the operating system prohibits password reuse for a
minimum of five generations.Check for the value of the \"remember\" argument in
\"/etc/pam.d/system-auth-ac\" with the following command:# grep -i remember
/etc/pam.d/system-auth-acpassword sufficient pam_unix.so use_authtok sha512
shadow remember=5If the line containing the \"pam_unix.so\" line does not have
the \"remember\" module argument set, or the value of the \"remember\" module
argument is set to less than \"5\", this is a finding."
  tag "fix": "Configure the operating system to prohibit password reuse for a
minimum of five generations.Add the following line in
\"/etc/pam.d/system-auth-ac\" (or modify the line to have the required
value):password sufficient pam_unix.so use_authtok sha512 shadow remember=5"
end

