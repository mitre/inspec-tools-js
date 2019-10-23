control "V-72427" do
  title "The operating system must implement multifactor authentication for
access to privileged accounts via pluggable authentication modules (PAM)."
  desc  "Using an authentication device, such as a CAC or token that is
separate from the information system, ensures that even if the information
system is compromised, that compromise will not affect credentials stored on
the authentication device.Multifactor solutions that require devices separate
from information systems gaining access include, for example, hardware tokens
providing time-based or challenge-response authenticators and smart cards such
as the U.S. Government Personal Identity Verification card and the DoD Common
Access Card.A privileged account is defined as an information system account
with authorizations of a privileged user.Remote access is access to DoD
nonpublic information systems by an authorized user (or an information system)
communicating through an external, non-organization-controlled network. Remote
access methods include, for example, dial-up, broadband, and wireless.This
requirement only applies to components where this is specific to the function
of the device or has the concept of an organizational user (e.g., VPN, proxy
capability). This does not apply to authentication for the purpose of
configuring the device itself (management).Requires further clarification from
NIST."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000375-GPOS-00160"
  tag "satisfies": ["SRG-OS-000375-GPOS-00160", "SRG-OS-000375-GPOS-00161",
"SRG-OS-000375-GPOS-00162"]
  tag "gid": "V-72427"
  tag "rid": "SV-87051r3_rule"
  tag "stig_id": "RHEL-07-041002"
  tag "fix_id": "F-78779r3_fix"
  tag "cci": ["CCI-001948", "CCI-001953", "CCI-001954"]
  tag "nist": ["IA-2 (11)", "IA-2 (12)", "IA-2 (12)", "Rev_4"]
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
  tag "check": "Verify the operating system implements multifactor
authentication for remote access to privileged accounts via pluggable
authentication modules (PAM).Check the \"/etc/sssd/sssd.conf\" file for the
authentication services that are being used with the following command:# grep
services /etc/sssd/sssd.conf /etc/sssd/conf.d/*.confservices = nss, pamIf the
\"pam\" service is not present, this is a finding."
  tag "fix": "Configure the operating system to implement multifactor
authentication for remote access to privileged accounts via pluggable
authentication modules (PAM).Modify all of the services lines in
\"/etc/sssd/sssd.conf\" or in configuration files found under
\"/etc/sssd/conf.d\" to include pam."
end

