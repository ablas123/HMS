<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
    'dsn'          => 'mysql:host=mysql-3cb37202-ablas123a-f12a.a.aivencloud.com;port=10126;dbname=defaultdb;charset=utf8mb4',
    'hostname'     => '',
    'username'     => 'avnadmin',
    'password'     => 'AVNS_I0p4cP5M1bz4wkTKW2I',
    'database'     => '',
    'dbdriver'     => 'pdo',
    'dbprefix'     => '',
    'pconnect'     => FALSE,
    'db_debug'     => (ENVIRONMENT !== 'production'),
    'cache_on'     => FALSE,
    'cachedir'     => '',
    'char_set'     => 'utf8mb4',
    'dbcollat'     => 'utf8mb4_general_ci',
    'swap_pre'     => '',
    'encrypt'      => FALSE,
    'compress'     => FALSE,
    'stricton'     => FALSE,
    'failover'     => array(),
    'save_queries' => TRUE
);
