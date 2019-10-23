control "V-72051" do
  title "Cron logging must be implemented."
  desc  "Cron logging can be used to trace the successful or unsuccessful
execution of cron jobs. It can also be used to spot intrusions into the use of
the cron facility by unauthorized and malicious users."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-GPOS-00227"
  tag "gid": "V-72051"
  tag "rid": "SV-86675r1_rule"
  tag "stig_id": "RHEL-07-021100"
  tag "fix_id": "F-78403r1_fix"
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
  tag "check": "Verify that \"rsyslog\" is configured to log cron events.Check
the configuration of \"/etc/rsyslog.conf\" for the cron facility with the
following command:Note: If another logging package is used, substitute the
utility configuration file for \"/etc/rsyslog.conf\". # grep cron
/etc/rsyslog.confcron.* /var/log/cron.logIf the command does not return a
response, check for cron logging all facilities by inspecting the
\"/etc/rsyslog.conf\" file:# more /etc/rsyslog.confLook for the following
entry:*.* /var/log/messagesIf \"rsyslog\" is not logging messages for the cron
facility or all facilities, this is a finding.  If the entry is in the
\"/etc/rsyslog.conf\" file but is after the entry \"*.*\", this is a finding."
  tag "fix": "Configure \"rsyslog\" to log all cron messages by adding or
updating the following line to \"/etc/rsyslog.conf\":cron.*
/var/log/cron.logNote: The line must be added before the following entry if it
exists in \"/etc/rsyslog.conf\":*.* ~ # discards everything"
end

