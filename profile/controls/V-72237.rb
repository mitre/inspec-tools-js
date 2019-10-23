control "V-72237" do
  title "All network connections associated with SSH traffic must terminate at
the end of the session or after 10 minutes of inactivity, except to fulfill
documented and validated mission requirements."
  desc  "Terminating an idle SSH session within a short time period reduces the
window of opportunity for unauthorized personnel to take control of a
management session enabled on the console or console port that has been left
unattended. In addition, quickly terminating an idle SSH session will also free
up resources committed by the managed network element.Terminating network
connections associated with communications sessions includes, for example,
de-allocating associated TCP/IP address/port pairs at the operating system
level and de-allocating networking assignments at the application level if
multiple application sessions are using a single operating system-level network
connection. This does not mean that the operating system terminates all
sessions or network access; it only ends the inactive session and releases the
resources associated with that session."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000163-GPOS-00072"
  tag "satisfies": ["SRG-OS-000163-GPOS-00072", "SRG-OS-000279-GPOS-00109"]
  tag "gid": "V-72237"
  tag "rid": "SV-86861r3_rule"
  tag "stig_id": "RHEL-07-040320"
  tag "fix_id": "F-78591r2_fix"
  tag "cci": ["CCI-001133", "CCI-002361"]
  tag "nist": ["SC-10", "AC-12", "Rev_4"]
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
  tag "check": "Verify the operating system automatically terminates a user
session after inactivity time-outs have expired.Check for the value of the
\"ClientAliveInterval\" keyword with the following command:# grep -iw
clientaliveinterval /etc/ssh/sshd_configClientAliveInterval 600If
\"ClientAliveInterval\" is not configured, commented out, or has a value of
\"0\", this is a finding.If \"ClientAliveInterval\" has a value that is greater
than \"600\" and is not documented with the Information System Security Officer
(ISSO) as an operational requirement, this is a finding."
  tag "fix": "Configure the operating system to automatically terminate a user
session after inactivity time-outs have expired or at shutdown.Add the
following line (or modify the line to have the required value) to the
\"/etc/ssh/sshd_config\" file (this file may be named differently or be in a
different location if using a version of SSH that is provided by a third-party
vendor):ClientAliveInterval 600The SSH service must be restarted for changes to
take effect."
end

