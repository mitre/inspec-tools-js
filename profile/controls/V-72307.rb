control "V-72307" do
  title "An X Windows display manager must not be installed unless approved."
  desc  "Internet services that are not required for system or application
processes must not be active to decrease the attack surface of the system. X
Windows has a long history of security vulnerabilities and will not be used
unless approved and documented."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72307"
  tag "rid": "SV-86931r3_rule"
  tag "stig_id": "RHEL-07-040730"
  tag "fix_id": "F-78661r2_fix"
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
  tag "check": "Verify that if the system has X Windows System installed, it is
authorized.Check for the X11 package with the following command:# rpm -qa |
grep xorg | grep serverAsk the System Administrator if use of the X Windows
System is an operational requirement.If the use of X Windows on the system is
not documented with the Information System Security Officer (ISSO), this is a
finding."
  tag "fix": "Document the requirement for an X Windows server with the ISSO or
remove the related packages with the following commands:# rpm -e
xorg-x11-server-common"
end

