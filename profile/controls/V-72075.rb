control "V-72075" do
  title "The system must not allow removable media to be used as the boot
loader unless approved."
  desc  "Malicious users with removable boot media can gain access to a system
configured to use removable media as the boot loader. If removable media is
designed to be used as the boot loader, the requirement must be documented with
the Information System Security Officer (ISSO)."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000364-GPOS-00151"
  tag "gid": "V-72075"
  tag "rid": "SV-86699r1_rule"
  tag "stig_id": "RHEL-07-021700"
  tag "fix_id": "F-78427r1_fix"
  tag "cci": ["CCI-000318", "CCI-000368", "CCI-001812", "CCI-001813",
"CCI-001814"]
  tag "nist": ["CM-3 f", "CM-6 c", "CM-11 (2)", "CM-5 (1)", "CM-5 (1)", "Rev_4"]
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
  tag "check": "Verify the system is not configured to use a boot loader on
removable media.Note: GRUB 2 reads its configuration from the
\"/boot/grub2/grub.cfg\" file on traditional BIOS-based machines and from the
\"/boot/efi/EFI/redhat/grub.cfg\" file on UEFI machines.Check for the existence
of alternate boot loader configuration files with the following command:# find
/ -name grub.cfg/boot/grub2/grub.cfgIf a \"grub.cfg\" is found in any
subdirectories other than \"/boot/grub2\" and \"/boot/efi/EFI/redhat\", ask the
System Administrator if there is documentation signed by the ISSO to approve
the use of removable media as a boot loader. Check that the grub configuration
file has the set root command in each menu entry with the following commands:#
grep -c menuentry /boot/grub2/grub.cfg1# grep ‘set root’
/boot/grub2/grub.cfgset root=(hd0,1)If the system is using an alternate boot
loader on removable media, and documentation does not exist approving the
alternate configuration, this is a finding."
  tag "fix": "Remove alternate methods of booting the system from removable
media or document the configuration to boot from removable media with the ISSO."
end

