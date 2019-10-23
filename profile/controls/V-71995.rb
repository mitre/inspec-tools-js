control "V-71995" do
  title "The operating system must define default permissions for all
authenticated users in such a way that the user can only read and modify their
own files."
  desc  "Setting the most restrictive default permissions ensures that when new
accounts are created, they do not have unnecessary access."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00228"
  tag "gid": "V-71995"
  tag "rid": "SV-86619r1_rule"
  tag "stig_id": "RHEL-07-020240"
  tag "fix_id": "F-78347r1_fix"
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
  tag "check": "Verify the operating system defines default permissions for all
authenticated users in such a way that the user can only read and modify their
own files.Check for the value of the \"UMASK\" parameter in \"/etc/login.defs\"
file with the following command:Note: If the value of the \"UMASK\" parameter
is set to \"000\" in \"/etc/login.defs\" file, the Severity is raised to a CAT
I.# grep -i umask /etc/login.defsUMASK  077If the value for the \"UMASK\"
parameter is not \"077\", or the \"UMASK\" parameter is missing or is commented
out, this is a finding."
  tag "fix": "Configure the operating system to define default permissions for
all authenticated users in such a way that the user can only read and modify
their own files.Add or edit the line for the \"UMASK\" parameter in
\"/etc/login.defs\" file to \"077\":UMASK  077"
end

