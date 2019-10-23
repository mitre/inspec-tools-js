control "V-72297" do
  title "The system must be configured to prevent unrestricted mail relaying."
  desc  "If unrestricted mail relaying is permitted, unauthorized senders could
use this host as a mail relay for the purpose of sending spam or other
unauthorized activity."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72297"
  tag "rid": "SV-86921r2_rule"
  tag "stig_id": "RHEL-07-040680"
  tag "fix_id": "F-78651r2_fix"
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
  tag "check": "Verify the system is configured to prevent unrestricted mail
relaying.Determine if \"postfix\" is installed with the following commands:#
yum list installed postfixpostfix-2.6.6-6.el7.x86_64.rpm If postfix is not
installed, this is Not Applicable.If postfix is installed, determine if it is
configured to reject connections from unknown or untrusted networks with the
following command:# postconf -n
smtpd_client_restrictionssmtpd_client_restrictions = permit_mynetworks,
rejectIf the \"smtpd_client_restrictions\" parameter contains any entries other
than \"permit_mynetworks\" and \"reject\", this is a finding."
  tag "fix": "If \"postfix\" is installed, modify the \"/etc/postfix/main.cf\"
file to restrict client connections to the local network with the following
command:# postconf -e 'smtpd_client_restrictions = permit_mynetworks,reject'"
end

