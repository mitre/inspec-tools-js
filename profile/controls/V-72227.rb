control "V-72227" do
  title "The operating system must implement cryptography to protect the
integrity of Lightweight Directory Access Protocol (LDAP) authentication
communications."
  desc  "Without cryptographic integrity protections, information can be
altered by unauthorized users without detection.Cryptographic mechanisms used
for protecting the integrity of information include, for example, signed hash
functions using asymmetric cryptography enabling distribution of the public key
to verify the hash information while maintaining the confidentiality of the key
used to generate the hash."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000250-GPOS-00093"
  tag "gid": "V-72227"
  tag "rid": "SV-86851r2_rule"
  tag "stig_id": "RHEL-07-040180"
  tag "fix_id": "F-78581r1_fix"
  tag "cci": ["CCI-001453"]
  tag "nist": ["AC-17 (2)", "Rev_4"]
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
  tag "check": "Verify the operating system implements cryptography to protect
the integrity of remote LDAP authentication sessions.To determine if LDAP is
being used for authentication, use the following command:# grep -i useldapauth
/etc/sysconfig/authconfigUSELDAPAUTH=yesIf USELDAPAUTH=yes, then LDAP is being
used. To see if LDAP is configured to use TLS, use the following command:# grep
-i ssl /etc/pam_ldap.confssl start_tlsIf the \"ssl\" option is not
\"start_tls\", this is a finding."
  tag "fix": "Configure the operating system to implement cryptography to
protect the integrity of LDAP authentication sessions.Set the USELDAPAUTH=yes
in \"/etc/sysconfig/authconfig\".Set \"ssl start_tls\" in
\"/etc/pam_ldap.conf\"."
end

