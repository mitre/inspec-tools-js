control "V-71997" do
  title "The operating system must be a vendor supported release."
  desc  "An operating system release is considered \"supported\" if the vendor
continues to provide security patches for the product. With an unsupported
release, it will not be possible to resolve security issues discovered in the
system software."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-71997"
  tag "rid": "SV-86621r2_rule"
  tag "stig_id": "RHEL-07-020250"
  tag "fix_id": "F-78349r1_fix"
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
  tag "check": "Verify the version of the operating system is vendor
supported.Check the version of the operating system with the following
command:# cat /etc/redhat-releaseRed Hat Enterprise Linux Server release 7.2
(Maipo)Current End of Life for RHEL 7.2 is Q4 2020.Current End of Life for RHEL
7.3 is 30 June 2024.If the release is not supported by the vendor, this is a
finding."
  tag "fix": "Upgrade to a supported version of the operating system."
end

