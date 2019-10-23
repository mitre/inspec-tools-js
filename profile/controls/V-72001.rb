control "V-72001" do
  title "The system must not have unnecessary accounts."
  desc  "Accounts providing no operational purpose provide additional
opportunities for system compromise. Unnecessary accounts include user accounts
for individuals not requiring access to the system and application accounts for
applications not installed on the system."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72001"
  tag "rid": "SV-86625r1_rule"
  tag "stig_id": "RHEL-07-020270"
  tag "fix_id": "F-78353r1_fix"
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
  tag "check": "Verify all accounts on the system are assigned to an active
system, application, or user account.Obtain the list of authorized system
accounts from the Information System Security Officer (ISSO).Check the system
accounts on the system with the following command:# more
/etc/passwdroot:x:0:0:root:/root:/bin/bashbin:x:1:1:bin:/bin:/sbin/nologindaemon:x:2:2:daemon:/sbin:/sbin/nologinsync:x:5:0:sync:/sbin:/bin/syncshutdown:x:6:0:shutdown:/sbin:/sbin/shutdownhalt:x:7:0:halt:/sbin:/sbin/haltgames:x:12:100:games:/usr/games:/sbin/nologingopher:x:13:30:gopher:/var/gopher:/sbin/nologinAccounts
such as \"games\" and \"gopher\" are not authorized accounts as they do not
support authorized system functions. If the accounts on the system do not match
the provided documentation, or accounts that do not support an authorized
system function are present, this is a finding."
  tag "fix": "Configure the system so all accounts on the system are assigned
to an active system, application, or user account. Remove accounts that do not
support approved system activities or that allow for a normal user to perform
administrative-level actions. Document all authorized accounts on the system."
end

