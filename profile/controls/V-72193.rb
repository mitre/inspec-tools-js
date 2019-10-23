control "V-72193" do
  title "All uses of the rmmod command must be audited."
  desc  "Without generating audit records that are specific to the security and
mission needs of the organization, it would be difficult to establish,
correlate, and investigate the events relating to an incident or identify those
responsible for one. Audit records can be generated from various components
within the information system (e.g., module or policy filter)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000471-GPOS-00216"
  tag "satisfies": ["SRG-OS-000471-GPOS-00216", "SRG-OS-000477-GPOS-00222"]
  tag "gid": "V-72193"
  tag "rid": "SV-86817r3_rule"
  tag "stig_id": "RHEL-07-030850"
  tag "fix_id": "F-78547r5_fix"
  tag "cci": ["CCI-000172"]
  tag "nist": ["AU-12 c", "Rev_4"]
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
  tag "check": "Verify the operating system generates audit records when
successful/unsuccessful attempts to use the \"rmmod\" command occur. Check the
auditing rules in \"/etc/audit/audit.rules\" with the following command:# grep
-i rmmod /etc/audit/audit.rulesIf the command does not return the following
output, this is a finding. -w /sbin/rmmod -p x -F auid!=4294967295 -k
module-changeIf the command does not return any output, this is a finding."
  tag "fix": "Configure the operating system to generate audit records when
successful/unsuccessful attempts to use the \"rmmod\" command occur. Add or
update the following rule in \"/etc/audit/rules.d/audit.rules\": -w
/sbin/rmmod-p x -F auid!=4294967295 -k module-changeThe audit daemon must be
restarted for the changes to take effect."
end

