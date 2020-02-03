<?php
require_once 'vendor/autoload.php';

$router = new Router($_GET['url']);
//liste de nos routes
$router->get('/exemple/show/:id', "Exemple.show");
$router->get('/exemple', "Exemple.index");
$router->get('/', "Home.index");
$router->get('/article', "Article.list");

$router->run();