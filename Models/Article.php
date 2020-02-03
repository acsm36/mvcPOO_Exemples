<?php

class Article extends Model
{
    public function __construct()
    {
        $this->pdo = parent::getPdo();
    }

    public function getAllArticles()
    {
        $sql = 'SELECT * FROM article';
        $req = $this->pdo->prepare($sql);
        $req->execute();
        return $articles = $req->fetchAll();
    }
}