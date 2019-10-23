control "V-72305" do
  title "If the Trivial File Transfer Protocol (TFTP) server is required, the
TFTP daemon must be configured to operate in secure mode."
  desc  "Restricting TFTP to a specific directory prevents remote users from
copying, transferring, or overwriting system files."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72305"
  tag "rid": "SV-86929r2_rule"
  tag "stig_id": "RHEL-07-040720"
  tag "fix_id": "F-78659r1_fix"
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
  tag "check": "Verify the TFTP daemon is configured to operate in secure
mode.Check to see if a TFTP server has been installed with the following
commands:# yum list installed | grep tftp-servertftp-server.x86_64    x.x-x.el7
   rhel-7-server-rpmsIf a TFTP server is not installed, this is Not
Applicable.If a TFTP server is installed, check for the server arguments with
the following command: # grep server_arge /etc/xinetd.d/tftpserver_args = -s
/var/lib/tftpbootIf the \"server_args\" line does not have a \"-s\" option and
a subdirectory is not assigned, this is a finding."
  tag "fix": "Configure the TFTP daemon to operate in secure mode by adding the
following line to \"/etc/xinetd.d/tftp\" (or modify the line to have the
required value):server_args = -s /var/lib/tftpboot"
end

