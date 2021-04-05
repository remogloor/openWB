<?php
include 'admintoken.php';

$outputfile="/tmp/out.log";
$pidfile="/tmp/reboot.pid";

$token = GetAdminToken();
file_put_contents('/var/www/html/openWB/ramdisk/admin.token', $token);
exec( 'mosquitto_pub -t openWB/set/system/reboot -m "' . $token .'"' );

return 1;
?>
