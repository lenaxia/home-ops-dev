<?php // My SSP configuration
$keyphrase = "PTRhHOCi6xdxxMMFbDJKjbaLeHaTklv3PFUz9W9wgMGyQPXX1zJOOHyiK4ZT3Nl0";
$debug = true;
$ldap_url = "ldap://192.168.0.120:389";
$ldap_binddn = "uid=pwm-admin,cn=users,dc=kao,dc=family";
$ldap_bindpw = "9S&xyqE8AQ&b&z";
$who_change_password = "user";
$ldap_base = "dc=kao,dc=family";
$ldap_filter = "(&(objectClass=posixAccount)(uid={login}))";
?>
