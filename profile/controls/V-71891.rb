control "V-71891" do
  title "The operating system must enable a user session lock until that user
re-establishes access using established identification and authentication
procedures."
  desc  "A session lock is a temporary action taken when a user stops work and
moves away from the immediate physical vicinity of the information system but
does not want to log out because of the temporary nature of the absence.The
session lock is implemented at the point where session activity can be
determined.Regardless of where the session lock is determined and implemented,
once invoked, the session lock must remain in place until the user
reauthenticates. No other activity aside from reauthentication must unlock the
system."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000028-GPOS-00009"
  tag "satisfies": ["SRG-OS-000028-GPOS-00009", "SRG-OS-000030-GPOS-00011"]
  tag "gid": "V-71891"
  tag "rid": "SV-86515r4_rule"
  tag "stig_id": "RHEL-07-010060"
  tag "fix_id": "F-78243r7_fix"
  tag "cci": ["CCI-000056"]
  tag "nist": ["AC-11 b", "Rev_4"]
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
  tag "check": "Verify the operating system enables a user's session lock until
that user re-establishes access using established identification and
authentication procedures. The screen program must be installed to lock
sessions on the console.Note: If the system does not have GNOME installed, this
requirement is Not Applicable.Check to see if the screen lock is enabled with
the following command:# grep -i lock-enabled
/etc/dconf/db/local.d/00-screensaverlock-enabled=trueIf the \"lock-enabled\"
setting is missing or is not set to \"true\", this is a finding."
  tag "fix": "Configure the operating system to enable a user's session lock
until that user re-establishes access using established identification and
authentication procedures.Create a database to contain the system-wide
screensaver settings (if it does not already exist) with the following
command:# touch /etc/dconf/db/local.d/00-screensaverEdit
\"org/gnome/desktop/screensaver\" and add or update the following lines:# Set
this to true to lock the screen when the screensaver
activateslock-enabled=trueUpdate the system databases:# dconf updateUsers must
log out and back in again before the system-wide settings take effect."
end

