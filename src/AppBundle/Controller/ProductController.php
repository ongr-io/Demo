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
        $colorFilter->setField(sprintf('variants.color.%s.text', $request->getLocale()));

        $materialFilter = $this->get('ongr_filter_manager.filter.material');
        $materialFilter->setField(sprintf('variants.material.%s.text', $request->getLocale()));

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
        $locale = $request->getLocale();
        $var = $request->query->get('variant');
        $variants = [];
        $parameters = [
            'product' => $document,
            'shop_url_origin' => $this->getParameter('shop_url_origin'),
        ];
        foreach ($document->variants as $variant) {
            $variants[$variant->key] = $variant;
        }

        if ($var !== null && isset($variants[$var])) {
            $parameters['variant'] = $variants[$var];
        } else {
            $variants = array_reverse($variants);
            $parameters['variant'] = array_pop($variants);
        }

        return $this->render(
            'product/show.html.twig',
            $parameters
        );
    }
}
