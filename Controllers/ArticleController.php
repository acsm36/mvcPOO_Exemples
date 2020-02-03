<?php

class ArticleController extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->model = new Article();
    }   

    public function list()
    {
        $articles = $this->model->getAllArticles();
        $pageTwig = 'Article/list.html.twig';
        $template = $this->twig->load($pageTwig);
        echo $template->render(["articles" => $articles]);
    }

}