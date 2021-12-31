<?php
require('headers.php');
require('functions.php');

$json = json_decode(file_get_contents('php://input'));

$id = filter_var($json->id, FILTER_SANITIZE_STRING);
$uname = filter_var($json->uname, FILTER_SANITIZE_STRING);
$passwd = filter_var($json->passwd, FILTER_SANITIZE_STRING);

$db = createDbConnection();

createUser($db, $id, $uname, $passwd);