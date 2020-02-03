<?php

class Exemple extends Model {
    public function __construct()
    {
        $this->pdo = parent::getPdo();
    }

    public function getOneExemple($id) {
        $req = $this->pdo->prepare('SELECT exemple.*, truc.*,
        GROUP_CONCAT(truc.text) AS text FROM exemple, truc, exemple_truc WHERE exemple.id = ? AND exemple.id = exemple_truc.id_exemple AND exemple_truc.id_truc = truc.id_truc');
        $req->execute([$id]);
        return $req->fetch();
    }

    public function getAllExemples() {
        //Les 2 requêtes $req ci-dessus nous donne les données désirées mais aucune sous un format qui nous arrange, je vous conseille plutôt d'adopter la première requête et de modifier les données récupérées en PHP en faisant des opérations sur les tableaux afin qu'il n'y ait pas plusieurs ligne exemple avec le même id et que ces lignes comportent un tableau des trucs associés à chaque exemple (#la joie des relations Many to Many :D)
        $req = $this->pdo->prepare('SELECT exemple.*, truc.* FROM exemple, truc, exemple_truc WHERE exemple.id_exemple = exemple_truc.id AND exemple_truc.id_truc = truc.id_truc');
        /*$req = $this->pdo->prepare(
            'SELECT e.*, t.*,
            GROUP_CONCAT(DISTINCT t.text SEPARATOR "\#~#") AS text
            FROM exemple e
            INNER JOIN exemple_truc et ON e.id = et.id_exemple
            INNER JOIN truc t ON et.id_truc = t.id_truc
            GROUP BY e.id'
        );*/
        $req->execute();
        return $req->fetchAll();
    }
}