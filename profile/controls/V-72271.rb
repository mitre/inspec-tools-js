control "V-72271" do
  title "The operating system must protect against or limit the effects of
Denial of Service (DoS) attacks by validating the operating system is
implementing rate-limiting measures on impacted network interfaces."
  desc  "DoS is a condition when a resource is not available for legitimate
users. When this occurs, the organization either cannot accomplish its mission
or must operate at degraded capacity.This requirement addresses the
configuration of the operating system to mitigate the impact of DoS attacks
that have occurred or are ongoing on system availability. For each system,
known and potential DoS attacks must be identified and solutions for each type
implemented. A variety of technologies exist to limit or, in some cases,
eliminate the effects of DoS attacks (e.g., limiting processes or establishing
memory partitions). Employing increased capacity and bandwidth, combined with
service redundancy, may reduce the susceptibility to some DoS attacks."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000420-GPOS-00186"
  tag "gid": "V-72271"
  tag "rid": "SV-86895r2_rule"
  tag "stig_id": "RHEL-07-040510"
  tag "fix_id": "F-78625r2_fix"
  tag "cci": ["CCI-002385"]
  tag "nist": ["SC-5", "Rev_4"]
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
  tag "check": "Verify the operating system protects against or limits the
effects of DoS attacks by ensuring the operating system is implementing
rate-limiting measures on impacted network interfaces.Check the firewall
configuration with the following command:Note: The command is to query rules
for the public zone.# firewall-cmd --direct --get-rule ipv4 filter
IN_public_allowrule ipv4 filter IN_public_allow 0 -p tcp -m limit --limit
25/minute --limit-burst 100  -j ACCEPTIf a rule with both the limit and
limit-burst arguments parameters does not exist, this is a finding."
  tag "fix": "Create a direct firewall rule to protect against DoS attacks with
the following command:Note: The command is to add a rule to the public zone.#
firewall-cmd --direct --permanent --add-rule ipv4 filter IN_public_allow 0 -m
tcp -p tcp -m limit --limit 25/minute --limit-burst 100 -j ACCEPTThe firewalld
service will need to be restarted for this to take effect:# systemctl restart
firewalld"
end

