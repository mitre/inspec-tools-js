control "V-71893" do
  title "The operating system must initiate a screensaver after a 15-minute
period of inactivity for graphical user interfaces."
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
  tag "gid": "V-71893"
  tag "rid": "SV-86517r4_rule"
  tag "stig_id": "RHEL-07-010070"
  tag "fix_id": "F-78245r5_fix"
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
  tag "check": "Verify the operating system initiates a screensaver after a
15-minute period of inactivity for graphical user interfaces. The screen
program must be installed to lock sessions on the console.Note: If the system
does not have GNOME installed, this requirement is Not Applicable.Check to see
if GNOME is configured to display a screensaver after a 15 minute delay with
the following command:# grep -i idle-delay
/etc/dconf/db/local.d/*idle-delay=uint32 900If the \"idle-delay\" setting is
missing or is not set to \"900\" or less, this is a finding."
  tag "fix": "Configure the operating system to initiate a screensaver after a
15-minute period of inactivity for graphical user interfaces.Create a database
to contain the system-wide screensaver settings (if it does not already exist)
with the following command:# touch /etc/dconf/db/local.d/00-screensaverEdit
/etc/dconf/db/local.d/00-screensaver and add or update the following
lines:[org/gnome/desktop/session]# Set the lock time out to 900 seconds before
the session is considered idleidle-delay=uint32 900You must include the
\"uint32\" along with the integer key values as shown.Update the system
databases:# dconf updateUsers must log out and back in again before the
system-wide settings take effect."
end

