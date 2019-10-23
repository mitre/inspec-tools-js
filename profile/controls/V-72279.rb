control "V-72279" do
  title "There must be no shosts.equiv files on the system."
  desc  "The shosts.equiv files are used to configure host-based authentication
for the system via SSH. Host-based authentication is not sufficient for
preventing unauthorized access to the system, as it does not require
interactive identification and authentication of a connection request, or for
the use of two-factor authentication."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72279"
  tag "rid": "SV-86903r1_rule"
  tag "stig_id": "RHEL-07-040550"
  tag "fix_id": "F-78633r1_fix"
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
  tag "check": "Verify there are no \"shosts.equiv\" files on the system.Check
the system for the existence of these files with the following command:# find /
-name shosts.equivIf any \"shosts.equiv\" files are found on the system, this
is a finding."
  tag "fix": "Remove any found \"shosts.equiv\" files from the system.# rm
/[path]/[to]/[file]/shosts.equiv"
end

