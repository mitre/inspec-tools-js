control "V-72299" do
  title "A File Transfer Protocol (FTP) server package must not be installed
unless needed."
  desc  "The FTP service provides an unencrypted remote access that does not
provide for the confidentiality and integrity of user passwords or the remote
session. If a privileged user were to log on using this service, the privileged
user password could be compromised. SSH or other encrypted file transfer
methods must be used in place of this service."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72299"
  tag "rid": "SV-86923r2_rule"
  tag "stig_id": "RHEL-07-040690"
  tag "fix_id": "F-78653r2_fix"
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
  tag "check": "Verify an FTP server has not been installed on the system.Check
to see if an FTP server has been installed with the following commands:# yum
list installed vsftpd vsftpd-3.0.2.el7.x86_64.rpmIf \"vsftpd\" is installed and
is not documented with the Information System Security Officer (ISSO) as an
operational requirement, this is a finding."
  tag "fix": "Document the \"vsftpd\" package with the ISSO as an operational
requirement or remove it from the system with the following command:# yum
remove vsftpd"
end

