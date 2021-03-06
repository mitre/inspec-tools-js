control "V-72291" do
  title "The system must not allow interfaces to perform Internet Protocol
version 4 (IPv4) Internet Control Message Protocol (ICMP) redirects by default."
  desc  "ICMP redirect messages are used by routers to inform hosts that a more
direct route exists for a particular destination. These messages contain
information from the system's route table, possibly revealing portions of the
network topology."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72291"
  tag "rid": "SV-86915r3_rule"
  tag "stig_id": "RHEL-07-040650"
  tag "fix_id": "F-78645r3_fix"
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
  tag "check": "Verify the system does not allow interfaces to perform IPv4
ICMP redirects by default.Check the value of the \"default send_redirects\"
variables with the following command:# /sbin/sysctl -a | grep
'net.ipv4.conf.default.send_redirects'net.ipv4.conf.default.send_redirects = 0
If the returned line does not have a value of \"0\", or a line is not returned,
this is a finding."
  tag "fix": "Configure the system to not allow interfaces to perform IPv4 ICMP
redirects by default. Set the system to the required kernel parameter by adding
the following line to \"/etc/sysctl.conf\" (or modify the line to have the
required value):net.ipv4.conf.default.send_redirects=0Issue the following
command to make the changes take effect:# sysctl -p /etc/sysctl.conf"
end

