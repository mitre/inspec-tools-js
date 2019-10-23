control "V-71989" do
  title "The operating system must enable SELinux."
  desc  "Without verification of the security functions, security functions may
not operate correctly and the failure may go unnoticed. Security function is
defined as the hardware, software, and/or firmware of the information system
responsible for enforcing the system security policy and supporting the
isolation of code and data on which the protection is based. Security
functionality includes, but is not limited to, establishing system accounts,
configuring access authorizations (i.e., permissions, privileges), setting
events to be audited, and setting intrusion detection parameters.This
requirement applies to operating systems performing security function
verification/testing and/or systems and environments that require this
functionality."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000445-GPOS-00199"
  tag "gid": "V-71989"
  tag "rid": "SV-86613r2_rule"
  tag "stig_id": "RHEL-07-020210"
  tag "fix_id": "F-78341r2_fix"
  tag "cci": ["CCI-002165", "CCI-002696"]
  tag "nist": ["AC-3 (4)", "SI-6 a", "Rev_4"]
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
  tag "check": "Verify the operating system verifies correct operation of all
security functions.Check if \"SELinux\" is active and in \"Enforcing\" mode
with the following command:# getenforceEnforcingIf \"SELinux\" is not active
and not in \"Enforcing\" mode, this is a finding."
  tag "fix": "Configure the operating system to verify correct operation of all
security functions.Set the \"SELinux\" status and the \"Enforcing\" mode by
modifying the \"/etc/selinux/config\" file to have the following
line:SELINUX=enforcingA reboot is required for the changes to take effect."
end

