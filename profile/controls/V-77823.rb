control "V-77823" do
  title "The operating system must require authentication upon booting into
single-user and maintenance modes."
  desc  "If the system does not require valid root authentication before it
boots into single-user or maintenance mode, anyone who invokes single-user or
maintenance mode is granted privileged access to all files on the system."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000080-GPOS-00048"
  tag "gid": "V-77823"
  tag "rid": "SV-92519r1_rule"
  tag "stig_id": "RHEL-07-010481"
  tag "fix_id": "F-84523r1_fix"
  tag "cci": ["CCI-000213"]
  tag "nist": ["AC-3", "Rev_4"]
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
  tag "check": "Verify the operating system must require authentication upon
booting into single-user and maintenance modes.Check that the operating system
requires authentication upon booting into single-user mode with the following
command:# grep -i execstart
/usr/lib/systemd/system/rescue.serviceExecStart=-/bin/sh -c
\"/usr/sbin/sulogin; /usr/bin/systemctl --fail --no-block default\"If
\"ExecStart\" does not have \"/usr/sbin/sulogin\" as an option, this is a
finding."
  tag "fix": "Configure the operating system to require authentication upon
booting into single-user and maintenance modes.Add or modify the \"ExecStart\"
line in \"/usr/lib/systemd/system/rescue.service\" to include
\"/usr/sbin/sulogin\":ExecStart=-/bin/sh -c \"/usr/sbin/sulogin;
/usr/bin/systemctl --fail --no-block default\""
end

