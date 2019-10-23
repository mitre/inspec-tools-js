control "V-71955" do
  title "The operating system must not allow an unrestricted logon to the
system."
  desc  "Failure to restrict system access to authenticated users negatively
impacts operating system security."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00229"
  tag "gid": "V-71955"
  tag "rid": "SV-86579r2_rule"
  tag "stig_id": "RHEL-07-010450"
  tag "fix_id": "F-78307r2_fix"
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
  tag "check": "Verify the operating system does not allow an unrestricted
logon to the system via a graphical user interface.Note: If the system does not
have GNOME installed, this requirement is Not Applicable. Check for the value
of the \"TimedLoginEnable\" parameter in \"/etc/gdm/custom.conf\" file with the
following command:# grep -i timedloginenable
/etc/gdm/custom.confTimedLoginEnable=falseIf the value of \"TimedLoginEnable\"
is not set to \"false\", this is a finding."
  tag "fix": "Configure the operating system to not allow an unrestricted
account to log on to the system via a graphical user interface.Note: If the
system does not have GNOME installed, this requirement is Not Applicable.Add or
edit the line for the \"TimedLoginEnable\" parameter in the [daemon] section of
the \"/etc/gdm/custom.conf\" file to \"false\":[daemon]TimedLoginEnable=false"
end

