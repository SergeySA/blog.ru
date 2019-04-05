<?php
include('db.php');

$config = require('config.php');
$connection = connect_to_db(
    $config['db']['server'], $config['db']['username'], $config['db']['password'],
    $config['db']['name']
);

if (!$connection) {
    die('Нет соединения с базой данных.');
}
