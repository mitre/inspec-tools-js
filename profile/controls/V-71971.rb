control "V-71971" do
  title "The operating system must prevent non-privileged users from executing
privileged functions to include disabling, circumventing, or altering
implemented security safeguards/countermeasures."
  desc  "Preventing non-privileged users from executing privileged functions
mitigates the risk that unauthorized individuals or processes may gain
unnecessary access to information or privileges.Privileged functions include,
for example, establishing accounts, performing system integrity checks, or
administering cryptographic key management activities. Non-privileged users are
individuals who do not possess appropriate authorizations. Circumventing
intrusion detection and prevention mechanisms or malicious code protection
mechanisms are examples of privileged functions that require protection from
non-privileged users."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000324-GPOS-00125"
  tag "gid": "V-71971"
  tag "rid": "SV-86595r1_rule"
  tag "stig_id": "RHEL-07-020020"
  tag "fix_id": "F-78323r1_fix"
  tag "cci": ["CCI-002165", "CCI-002235"]
  tag "nist": ["AC-3 (4)", "AC-6 (10)", "Rev_4"]
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
  tag "check": "Verify the operating system prevents non-privileged users from
executing privileged functions to include disabling, circumventing, or altering
implemented security safeguards/countermeasures.Get a list of authorized users
(other than System Administrator and guest accounts) for the system.Check the
list against the system by using the following command:# semanage login -l |
moreLogin Name  SELinux User   MLS/MCS Range  Service__default__  user_u
s0-s0:c0.c1023   *root   unconfined_u   s0-s0:c0.c1023   *system_u  system_u
s0-s0:c0.c1023   *joe  staff_u   s0-s0:c0.c1023   *All administrators must be
mapped to the \"sysadm_u\" or \"staff_u\" users with the appropriate domains
(sysadm_t and staff_t).All authorized non-administrative users must be mapped
to the \"user_u\" role or the appropriate domain (user_t).If they are not
mapped in this way, this is a finding."
  tag "fix": "Configure the operating system to prevent non-privileged users
from executing privileged functions to include disabling, circumventing, or
altering implemented security safeguards/countermeasures.Use the following
command to map a new user to the \"sysdam_u\" role: #semanage login -a -s
sysadm_u <username>Use the following command to map an existing user to the
\"sysdam_u\" role:#semanage login -m -s sysadm_u <username>Use the following
command to map a new user to the \"staff_u\" role:#semanage login -a -s staff_u
<username>Use the following command to map an existing user to the \"staff_u\"
role:#semanage login -m -s staff_u <username>Use the following command to map a
new user to the \"user_u\" role:# semanage login -a -s user_u <username>Use the
following command to map an existing user to the \"user_u\" role:# semanage
login -m -s user_u <username>"
end

