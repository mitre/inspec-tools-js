control "V-72287" do
  title "The system must not respond to Internet Protocol version 4 (IPv4)
Internet Control Message Protocol (ICMP) echoes sent to a broadcast address."
  desc  "Responding to broadcast (ICMP) echoes facilitates network mapping and
provides a vector for amplification attacks."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72287"
  tag "rid": "SV-86911r1_rule"
  tag "stig_id": "RHEL-07-040630"
  tag "fix_id": "F-78641r1_fix"
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
  tag "check": "Verify the system does not respond to IPv4 ICMP echoes sent to
a broadcast address.Check the value of the \"icmp_echo_ignore_broadcasts\"
variable with the following command:# /sbin/sysctl -a | grep
net.ipv4.icmp_echo_ignore_broadcastsnet.ipv4.icmp_echo_ignore_broadcasts=1If
the returned line does not have a value of \"1\", a line is not returned, or
the retuned line is commented out, this is a finding."
  tag "fix": "Set the system to the required kernel parameter by adding the
following line to \"/etc/sysctl.conf\" (or modify the line to have the required
value):net.ipv4.icmp_echo_ignore_broadcasts=1"
end

