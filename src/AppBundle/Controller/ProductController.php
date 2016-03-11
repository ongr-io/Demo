<?php

namespace AppBundle\Controller;

use AppBundle\Document\Category;
use AppBundle\Document\Product;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class ProductController extends Controller
{
    /**
     * Product list for single category.
     */
    public function searchAction(Request $request)
    {
        $filter = $this->get('ongr_filter_manager.filter.search');
        $filter->setField(sprintf("title.%s.text", $request->getLocale()));

        $filterManager = $this->get('ongr_filter_manager.product_list')->handleRequest($request);

        return $this->render(
            'product/list.html.twig',
            [
                'search_value' => $request->get('q'),
                'category' => new Category(),
                'filter_manager' => $filterManager,
            ]
        );
    }
    /**
     * Product list for single category.
     */
    public function listAction(Request $request, Category $document)
    {
        $colorFilter = $this->get('ongr_filter_manager.filter.color');
        $colorFilter->setField(sprintf('color.%s.text', $request->getLocale()));

        $materialFilter = $this->get('ongr_filter_manager.filter.material');
        $materialFilter->setField(sprintf('material.%s.text', $request->getLocale()));

        $filterManager = $this->get('ongr_filter_manager.product_list')->handleRequest($request);

        return $this->render(
            'product/list.html.twig',
            [
                'category' => $document,
                'filter_manager' => $filterManager,
            ]
        );
    }

    public function showAction(Request $request, Product $document)
    {
        return $this->render(
            'product/show.html.twig',
            [
                'product' => $document,
                'shop_url_origin' => $this->getParameter('shop_url_origin'),
            ]
        );
    }
}
