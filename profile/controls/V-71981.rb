control "V-71981" do
  title "The operating system must prevent the installation of software,
patches, service packs, device drivers, or operating system components of
packages without verification of the repository metadata."
  desc  "Changes to any software components can have significant effects on the
overall security of the operating system. This requirement ensures the software
has not been tampered with and that it has been provided by a trusted
vendor.Accordingly, patches, service packs, device drivers, or operating system
components must be signed with a certificate recognized and approved by the
organization.Verifying the authenticity of the software prior to installation
validates the integrity of the patch or upgrade received from a vendor. This
ensures the software has not been tampered with and that it has been provided
by a trusted vendor. Self-signed certificates are disallowed by this
requirement. The operating system should not have to verify the software again.
This requirement does not mandate DoD certificates for this purpose; however,
the certificate used to verify the software must be from an approved
Certificate Authority."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000366-GPOS-00153"
  tag "gid": "V-71981"
  tag "rid": "SV-86605r1_rule"
  tag "stig_id": "RHEL-07-020070"
  tag "fix_id": "F-78333r1_fix"
  tag "cci": ["CCI-001749"]
  tag "nist": ["CM-5 (3)", "Rev_4"]
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
  tag "check": "Verify the operating system prevents the installation of
patches, service packs, device drivers, or operating system components of local
packages without verification of the repository metadata.Check that yum
verifies the package metadata prior to install with the following command:#
grep repo_gpgcheck /etc/yum.confrepo_gpgcheck=1If \"repo_gpgcheck\" is not set
to \"1\", or if options are missing or commented out, ask the System
Administrator how the metadata of local packages and other operating system
components are verified. If there is no process to validate the metadata of
packages that is approved by the organization, this is a finding."
  tag "fix": "Configure the operating system to verify the repository metadata
by setting the following options in the \"/etc/yum.conf\" file:repo_gpgcheck=1"
end

