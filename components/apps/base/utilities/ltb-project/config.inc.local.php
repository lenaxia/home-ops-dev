<?php // My SSP configuration
$keyphrase = "PTRhHOCi6xdxxMMFbDJKjbaLeHaTklv3PFUz9W9wgMGyQPXX1zJOOHyiK4ZT3Nl0";
$debug = true;
$ldap_url = "ldap://192.168.0.120:389";
$ldap_binddn = "uid=pwm-admin,cn=users,dc=kao,dc=family";
$ldap_bindpw = "9S&xyqE8AQ&b&z";
$ldap_base = "dc=kao,dc=family";
$ldap_filter = "(&(objectClass=posixAccount)(uid={login}))";
$who_change_password = "user";

$hash = "ARGON2";
#$logo = "images/ltb-logo.png";
$logo = "images/kao-logo.png";
$background_image = "images/unsplash-sky.jpeg";
$custom_css = "css/custom.css";
$display_footer = false;
$header_name_preset_login = "Remote-User";

$pwd_min_length = 8;
$pwd_min_lower = 3;
$pwd_min_upper = 1;
$pwd_min_digit = 1;
$pwd_min_special = 1;
$pwd_no_special_at_ends = true;
$use_pwnedpasswords = true;
$pwd_no_reuse = false;
$pwd_show_policy = "onerror";

$crypt_answers = true;

$mail_sendmailpath = '/usr/sbin/sendmail';
$mail_protocol = 'smtp';
$mail_smtp_debug = 0;
$mail_debug_format = 'html';
$mail_smtp_host = 'localhost';
$mail_smtp_auth = false;
$mail_smtp_user = '';
$mail_smtp_pass = '';
$mail_smtp_port = 25;
$mail_smtp_timeout = 30;
$mail_smtp_keepalive = false;
$mail_smtp_secure = 'tls';
$mail_smtp_autotls = true;
$mail_smtp_options = array();
$mail_contenttype = 'text/plain';
$mail_wordwrap = 0;
$mail_charset = 'utf-8';
$mail_priority = 3;

$change_sshkey = true;
$who_change_sshkey = "user"
$change_sshkey_attribute = "sshPublicKey";
$change_sshkey_objectClass = "ldapPublicKey";
$ssh_valid_key_types = array('ssh-rsa', 'ssh-dss', 'ecdsa-sha2-nistp256', 'ssh-ed25519');
$notify_on_sshkey_change = true;

?>
