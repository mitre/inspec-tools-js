control "V-71953" do
  title "The operating system must not allow an unattended or automatic logon
to the system via a graphical user interface."
  desc  "Failure to restrict system access to authenticated users negatively
impacts operating system security."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00229"
  tag "gid": "V-71953"
  tag "rid": "SV-86577r1_rule"
  tag "stig_id": "RHEL-07-010440"
  tag "fix_id": "F-78305r1_fix"
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
  tag "check": "Verify the operating system does not allow an unattended or
automatic logon to the system via a graphical user interface.Note: If the
system does not have GNOME installed, this requirement is Not Applicable. Check
for the value of the \"AutomaticLoginEnable\" in the \"/etc/gdm/custom.conf\"
file with the following command:# grep -i automaticloginenable
/etc/gdm/custom.confAutomaticLoginEnable=falseIf the value of
\"AutomaticLoginEnable\" is not set to \"false\", this is a finding."
  tag "fix": "Configure the operating system to not allow an unattended or
automatic logon to the system via a graphical user interface.Note: If the
system does not have GNOME installed, this requirement is Not Applicable.Add or
edit the line for the \"AutomaticLoginEnable\" parameter in the [daemon]
section of the \"/etc/gdm/custom.conf\" file to
\"false\":[daemon]AutomaticLoginEnable=false"
end

