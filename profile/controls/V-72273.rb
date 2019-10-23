control "V-72273" do
  title "The operating system must enable an application firewall, if
available."
  desc  "Firewalls protect computers from network attacks by blocking or
limiting access to open network ports. Application firewalls limit which
applications are allowed to communicate over the network."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "satisfies": ["SRG-OS-000480-GPOS-00227", "SRG-OS-000480-GPOS-00231",
"SRG-OS-000480-GPOS-00232"]
  tag "gid": "V-72273"
  tag "rid": "SV-86897r1_rule"
  tag "stig_id": "RHEL-07-040520"
  tag "fix_id": "F-78627r1_fix"
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
  tag "check": "Verify the operating system enabled an application
firewall.Check to see if \"firewalld\" is installed with the following
command:# yum list installed firewalldfirewalld-0.3.9-11.el7.noarch.rpmIf the
\"firewalld\" package is not installed, ask the System Administrator if another
firewall application (such as iptables) is installed. If an application
firewall is not installed, this is a finding. Check to see if the firewall is
loaded and active with the following command:# systemctl status
firewalldfirewalld.service - firewalld - dynamic firewall daemon   Loaded:
loaded (/usr/lib/systemd/system/firewalld.service; enabled)   Active: active
(running) since Tue 2014-06-17 11:14:49 CEST; 5 days agoIf \"firewalld\" does
not show a status of \"loaded\" and \"active\", this is a finding. Check the
state of the firewall:# firewall-cmd --state runningIf \"firewalld\" does not
show a state of \"running\", this is a finding."
  tag "fix": "Ensure the operating system's application firewall is
enabled.Install the \"firewalld\" package, if it is not on the system, with the
following command:# yum install firewalldStart the firewall via \"systemctl\"
with the following command:# systemctl start firewalld"
end

