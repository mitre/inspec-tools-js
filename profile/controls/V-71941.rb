control "V-71941" do
  title "The operating system must disable account identifiers (individuals,
groups, roles, and devices) if the password expires."
  desc  "Inactive identifiers pose a risk to systems and applications because
attackers may exploit an inactive identifier and potentially obtain undetected
access to the system. Owners of inactive accounts will not notice if
unauthorized access to their user account has been obtained.Operating systems
need to track periods of inactivity and disable application identifiers after
zero days of inactivity."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000118-GPOS-00060"
  tag "gid": "V-71941"
  tag "rid": "SV-86565r1_rule"
  tag "stig_id": "RHEL-07-010310"
  tag "fix_id": "F-78293r1_fix"
  tag "cci": ["CCI-000795"]
  tag "nist": ["IA-4 e", "Rev_4"]
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
  tag "check": "Verify the operating system disables account identifiers
(individuals, groups, roles, and devices) after the password expires with the
following command:# grep -i inactive /etc/default/useraddINACTIVE=0If the value
is not set to \"0\", is commented out, or is not defined, this is a finding."
  tag "fix": "Configure the operating system to disable account identifiers
(individuals, groups, roles, and devices) after the password expires.Add the
following line to \"/etc/default/useradd\" (or modify the line to have the
required value):INACTIVE=0"
end

