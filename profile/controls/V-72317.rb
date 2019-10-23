control "V-72317" do
  title "The system must not have unauthorized IP tunnels configured."
  desc  "IP tunneling mechanisms can be used to bypass network filtering. If
tunneling is required, it must be documented with the Information System
Security Officer (ISSO)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72317"
  tag "rid": "SV-86941r1_rule"
  tag "stig_id": "RHEL-07-040820"
  tag "fix_id": "F-78671r1_fix"
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
  tag "check": "Verify the system does not have unauthorized IP tunnels
configured.Check to see if \"libreswan\" is installed with the following
command:# yum list installed libreswanopenswan-2.6.32-27.el6.x86_64If
\"libreswan\" is installed, check to see if the \"IPsec\" service is active
with the following command:# systemctl status ipsecipsec.service - Internet Key
Exchange (IKE) Protocol Daemon for IPsec   Loaded: loaded
(/usr/lib/systemd/system/ipsec.service; disabled)   Active: inactive (dead)If
the \"IPsec\" service is active, check to see if any tunnels are configured in
\"/etc/ipsec.conf\" and \"/etc/ipsec.d/\" with the following commands:# grep -i
conn /etc/ipsec.confconn mytunnel# grep -i conn /etc/ipsec.d/*.confconn
mytunnelIf there are indications that a \"conn\" parameter is configured for a
tunnel, ask the System Administrator if the tunnel is documented with the ISSO.
If \"libreswan\" is installed, \"IPsec\" is active, and an undocumented tunnel
is active, this is a finding."
  tag "fix": "Remove all unapproved tunnels from the system, or document them
with the ISSO."
end

