control "V-72319" do
  title "The system must not forward IPv6 source-routed packets."
  desc  "Source-routed packets allow the source of the packet to suggest that
routers forward the packet along a different path than configured on the
router, which can be used to bypass network security measures. This requirement
applies only to the forwarding of source-routed traffic, such as when IPv6
forwarding is enabled and the system is functioning as a router."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72319"
  tag "rid": "SV-86943r1_rule"
  tag "stig_id": "RHEL-07-040830"
  tag "fix_id": "F-78673r1_fix"
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
  tag "check": "Verify the system does not accept IPv6 source-routed
packets.Note: If IPv6 is not enabled, the key will not exist, and this is not a
finding.Check the value of the accept source route variable with the following
command:# /sbin/sysctl -a | grep
net.ipv6.conf.all.accept_source_routenet.ipv6.conf.all.accept_source_route=0If
the returned lines do not have a value of \"0\", or a line is not returned,
this is a finding."
  tag "fix": "Set the system to the required kernel parameter, if IPv6 is
enabled, by adding the following line to \"/etc/sysctl.conf\" (or modify the
line to have the required value):net.ipv6.conf.all.accept_source_route = 0"
end

