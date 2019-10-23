control "V-71899" do
  title "The operating system must initiate a session lock for the screensaver
after a period of inactivity for graphical user interfaces."
  desc  "A session time-out lock is a temporary action taken when a user stops
work and moves away from the immediate physical vicinity of the information
system but does not log out because of the temporary nature of the absence.
Rather than relying on the user to manually lock their operating system session
prior to vacating the vicinity, operating systems need to be able to identify
when a user's session has idled and take action to initiate the session
lock.The session lock is implemented at the point where session activity can be
determined and/or controlled."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000029-GPOS-00010"
  tag "gid": "V-71899"
  tag "rid": "SV-86523r3_rule"
  tag "stig_id": "RHEL-07-010100"
  tag "fix_id": "F-78251r2_fix"
  tag "cci": ["CCI-000057"]
  tag "nist": ["AC-11 a", "Rev_4"]
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
  tag "check": "Verify the operating system initiates a session lock after a
15-minute period of inactivity for graphical user interfaces. The screen
program must be installed to lock sessions on the console.If it is installed,
GNOME must be configured to enforce a session lock after a 15-minute delay.
Check for the session lock settings with the following commands:# grep -i
idle-activation-enabled /etc/dconf/db/local.d/*idle-activation-enabled=trueIf
\"idle-activation-enabled\" is not set to \"true\", this is a finding."
  tag "fix": "Configure the operating system to initiate a session lock after a
15-minute period of inactivity for graphical user interfaces.Create a database
to contain the system-wide screensaver settings (if it does not already exist)
with the following command: # touch /etc/dconf/db/local.d/00-screensaverAdd the
setting to enable screensaver locking after 15 minutes of
inactivity:[org/gnome/desktop/screensaver]idle-activation-enabled=trueUpdate
the system databases:# dconf updateUsers must log out and back in again before
the system-wide settings take effect."
end

