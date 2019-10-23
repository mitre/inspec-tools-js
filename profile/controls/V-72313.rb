control "V-72313" do
  title "SNMP community strings must be changed from the default."
  desc  "Whether active or not, default Simple Network Management Protocol
(SNMP) community strings must be changed to maintain security. If the service
is running with the default authenticators, anyone can gather data about the
system and the network and use the information to potentially compromise the
integrity of the system or network(s). It is highly recommended that SNMP
version 3 user authentication and message encryption be used in place of the
version 2 community strings."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72313"
  tag "rid": "SV-86937r1_rule"
  tag "stig_id": "RHEL-07-040800"
  tag "fix_id": "F-78667r1_fix"
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
  tag "check": "Verify that a system using SNMP is not using default community
strings.Check to see if the \"/etc/snmp/snmpd.conf\" file exists with the
following command:# ls -al /etc/snmp/snmpd.conf -rw-------   1 root root
52640 Mar 12 11:08 snmpd.confIf the file does not exist, this is Not
Applicable.If the file does exist, check for the default community strings with
the following commands:# grep public /etc/snmp/snmpd.conf# grep private
/etc/snmp/snmpd.confIf either of these commands returns any output, this is a
finding."
  tag "fix": "If the \"/etc/snmp/snmpd.conf\" file exists, modify any lines
that contain a community string value of \"public\" or \"private\" to another
string value."
end

