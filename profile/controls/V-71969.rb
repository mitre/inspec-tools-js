control "V-71969" do
  title "The ypserv package must not be installed."
  desc  "Removing the \"ypserv\" package decreases the risk of the accidental
(or intentional) activation of NIS or NIS+ services."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000095-GPOS-00049"
  tag "gid": "V-71969"
  tag "rid": "SV-86593r1_rule"
  tag "stig_id": "RHEL-07-020010"
  tag "fix_id": "F-78321r1_fix"
  tag "cci": ["CCI-000381"]
  tag "nist": ["CM-7 a", "Rev_4"]
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
  tag "check": "The NIS service provides an unencrypted authentication service
that does not provide for the confidentiality and integrity of user passwords
or the remote session.Check to see if the \"ypserve\" package is installed with
the following command:# yum list installed ypservIf the \"ypserv\" package is
installed, this is a finding."
  tag "fix": "Configure the operating system to disable non-essential
capabilities by removing the \"ypserv\" package from the system with the
following command:# yum remove ypserv"
end

