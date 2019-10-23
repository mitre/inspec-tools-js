control "V-71963" do
  title "Systems using Unified Extensible Firmware Interface (UEFI) must
require authentication upon booting into single-user and maintenance modes."
  desc  "If the system does not require valid root authentication before it
boots into single-user or maintenance mode, anyone who invokes single-user or
maintenance mode is granted privileged access to all files on the system. GRUB
2 is the default boot loader for RHEL 7 and is designed to require a password
to boot into single-user mode or make modifications to the boot menu."
  impact 0.7
  tag "severity": nil
  tag "gtitle": "SRG-OS-000080-GPOS-00048"
  tag "gid": "V-71963"
  tag "rid": "SV-86587r3_rule"
  tag "stig_id": "RHEL-07-010490"
  tag "fix_id": "F-78315r2_fix"
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
  tag "check": "For systems that use BIOS, this is Not Applicable.Check to see
if an encrypted root password is set. On systems that use UEFI, use the
following command:# grep -i password
/boot/efi/EFI/redhat/grub.cfgpassword_pbkdf2 [superusers-account]
[password-hash]If the root password entry does not begin with
\"password_pbkdf2\", this is a finding.If the \"superusers-account\" is not set
to \"root\", this is a finding."
  tag "fix": "Configure the system to encrypt the boot password for
root.Generate an encrypted grub2 password for root with the following
command:Note: The hash generated is an example.# grub2-mkpasswd-pbkdf2Enter
Password:Reenter Password:PBKDF2 hash of your password is
grub.pbkdf2.sha512.10000.F3A7CFAA5A51EED123BE8238C23B25B2A6909AFC9812F0D45Edit
\"/etc/grub.d/40_custom\" and add the following lines below the comments:# vi
/etc/grub.d/40_customset superusers=\"root\"password_pbkdf2 root {hash from
grub2-mkpasswd-pbkdf2 command}Generate a new \"grub.conf\" file with the new
password with the following commands:# grub2-mkconfig --output=/tmp/grub2.cfg#
mv /tmp/grub2.cfg /boot/efi/EFI/redhat/grub.cfg"
end

