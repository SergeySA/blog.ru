<?php

function connect_to_db($host, $username, $password, $dbName) {
    return mysqli_connect($host, $username, $password, $dbName);
}
