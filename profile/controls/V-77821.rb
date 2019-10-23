control "V-77821" do
  title "The Datagram Congestion Control Protocol (DCCP) kernel module must be
disabled unless required."
  desc  "Disabling DCCP protects the system against exploitation of any flaws
in the protocol implementation."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000378-GPOS-00163"
  tag "gid": "V-77821"
  tag "rid": "SV-92517r1_rule"
  tag "stig_id": "RHEL-07-020101"
  tag "fix_id": "F-84521r2_fix"
  tag "cci": ["CCI-001958"]
  tag "nist": ["IA-3", "Rev_4"]
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
  tag "check": "Verify the operating system disables the ability to load the
DCCP kernel module.Check to see if the DCCP kernel module is disabled with the
following command:# grep -r dccp /etc/modprobe.d/* | grep -i \"/bin/true\" |
grep -v \"^#\"install dccp /bin/trueIf the command does not return any output,
or the line is commented out, and use of DCCP is not documented with the
Information System Security Officer (ISSO) as an operational requirement, this
is a finding."
  tag "fix": "Configure the operating system to disable the ability to use the
DCCP kernel module.Create a file under \"/etc/modprobe.d\" with the following
command:# touch /etc/modprobe.d/nodccpAdd the following line to the created
file:install dccp /bin/true"
end

