control "V-72229" do
  title "The operating system must implement cryptography to protect the
integrity of Lightweight Directory Access Protocol (LDAP) communications."
  desc  "Without cryptographic integrity protections, information can be
altered by unauthorized users without detection.Cryptographic mechanisms used
for protecting the integrity of information include, for example, signed hash
functions using asymmetric cryptography enabling distribution of the public key
to verify the hash information while maintaining the confidentiality of the key
used to generate the hash."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000250-GPOS-00093"
  tag "gid": "V-72229"
  tag "rid": "SV-86853r2_rule"
  tag "stig_id": "RHEL-07-040190"
  tag "fix_id": "F-78583r1_fix"
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
the integrity of remote LDAP access sessions.To determine if LDAP is being used
for authentication, use the following command:# grep -i useldapauth
/etc/sysconfig/authconfigUSELDAPAUTH=yesIf USELDAPAUTH=yes, then LDAP is being
used. Check for the directory containing X.509 certificates for peer
authentication with the following command:# grep -i cacertdir
/etc/pam_ldap.conftls_cacertdir /etc/openldap/certsVerify the directory set
with the \"tls_cacertdir\" option exists.If the directory does not exist or the
option is commented out, this is a finding."
  tag "fix": "Configure the operating system to implement cryptography to
protect the integrity of LDAP remote access sessions.Set the \"tls_cacertdir\"
option in \"/etc/pam_ldap.conf\" to point to the directory that will contain
the X.509 certificates for peer authentication.Set the \"tls_cacertfile\"
option in \"/etc/pam_ldap.conf\" to point to the path for the X.509
certificates used for peer authentication."
end

