<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     *
     * @Route("/", name="app_homepage")
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function indexAction(Request $request)
    {
        return $this->render(
            'default/index.html.twig'
        );
    }

    /**
     *
     * @Route("/imprint", name="app_imprint")
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function imprintAction(Request $request)
    {
        return $this->render(
            'default/imprint.html.twig'
        );
    }
}
