control "V-71943" do
  title "Accounts subject to three unsuccessful logon attempts within 15
minutes must be locked for the maximum configurable period."
  desc  "By limiting the number of failed logon attempts, the risk of
unauthorized system access via user password guessing, otherwise known as
brute-forcing, is reduced. Limits are imposed by locking the account."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000329-GPOS-00128"
  tag "satisfies": ["SRG-OS-000329-GPOS-00128", "SRG-OS-000021-GPOS-00005"]
  tag "gid": "V-71943"
  tag "rid": "SV-86567r3_rule"
  tag "stig_id": "RHEL-07-010320"
  tag "fix_id": "F-78295r4_fix"
  tag "cci": ["CCI-002238"]
  tag "nist": ["AC-7 b", "Rev_4"]
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
  tag "check": "Verify the operating system automatically locks an account for
the maximum period for which the system can be configured.Check that the system
locks an account for the maximum period after three unsuccessful logon attempts
within a period of 15 minutes with the following command:# grep pam_faillock.so
/etc/pam.d/password-auth-acauth        required       pam_faillock.so preauth
silent audit deny=3 even_deny_root unlock_time=604800auth        [default=die]
pam_faillock.so authfail audit deny=3 even_deny_root unlock_time=604800account
required pam_faillock.so If the \"unlock_time\" setting is greater than
\"604800\" on both lines with the \"pam_faillock.so\" module name or is missing
from a line, this is a finding.# grep pam_faillock.so
/etc/pam.d/system-auth-acauth required pam_faillock.so preauth silent audit
deny=3 even_deny_root unlock_time=604800auth [default=die] pam_faillock.so
authfail audit deny=3 even_deny_root unlock_time=604800account required
pam_faillock.so If the \"unlock_time\" setting is greater than \"604800\" on
both lines with the \"pam_faillock.so\" module name or is missing from a line,
this is a finding."
  tag "fix": "Configure the operating system to lock an account for the maximum
period when three unsuccessful logon attempts in 15 minutes are made.Modify the
first three lines of the auth section of the \"/etc/pam.d/system-auth-ac\" and
\"/etc/pam.d/password-auth-ac\" files to match the following lines:auth
required       pam_faillock.so preauth silent audit deny=3 even_deny_root
fail_interval=900 unlock_time=604800auth        sufficient     pam_unix.so
try_first_passauth        [default=die]  pam_faillock.so authfail audit deny=3
even_deny_root fail_interval=900 unlock_time=604800account required
pam_faillock.so"
end

