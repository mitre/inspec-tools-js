control "V-72275" do
  title "The system must display the date and time of the last successful
account logon upon logon."
  desc  "Providing users with feedback on when account accesses last occurred
facilitates user recognition and reporting of unauthorized account use."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72275"
  tag "rid": "SV-86899r2_rule"
  tag "stig_id": "RHEL-07-040530"
  tag "fix_id": "F-78629r1_fix"
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
  tag "check": "Verify users are provided with feedback on when account
accesses last occurred.Check that \"pam_lastlog\" is used and not silent with
the following command:# grep pam_lastlog /etc/pam.d/postlogin-acsession
required pam_lastlog.so showfailedIf the \"silent\" option is present with
\"pam_lastlog\" check the sshd configuration file.# grep -i printlastlog
/etc/ssh/sshd_configPrintLastLog yesIf \"pam_lastlog\" is missing from
\"/etc/pam.d/postlogin-ac\" file, or the silent option is present and
PrintLastLog is missing from or set to \"no\" in the \"/etc/ssh/sshd_config\"
file this is a finding."
  tag "fix": "Configure the operating system to provide users with feedback on
when account accesses last occurred by setting the required configuration
options in \"/etc/pam.d/postlogin-ac\". Add the following line to the top of
\"/etc/pam.d/postlogin-ac\":session     required      pam_lastlog.so showfailed"
end

