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
        $col = $request->query->get('color');
        $mat = $request->query->get('material');
        $variants = [];
        $parameters = [
            'product' => $document,
            'shop_url_origin' => $this->getParameter('shop_url_origin'),
        ];
        if ($col !== null || $mat !== null) {
            foreach ($document->variants as $variant) {
                if (
                    $variant->color->$locale->text == $col &&
                    $variant->material->$locale->text == $mat
                ) {
                    $variants['variant'] = $variant;
                    break;
                } elseif ($variant->color->$locale->text == $col && $col !== '') {
                    $variants['materials'][] = $variant->material->$locale->text;
                } elseif ($variant->material->$locale->text == $mat && $mat !== '') {
                    $variants['colors'][] = $variant->color->$locale->text;
                }
            }
            $variants['selected_color'] = $col;
            $variants['selected_material'] = $mat;
        }
        if (isset($variants['variant'])) {
            $parameters['variant'] = $variants['variant'];
        } elseif (isset($variants['colors']) || isset($variants['materials'])) {
            $parameters['variants'] = $variants;
        }
        return $this->render(
            'product/show.html.twig',
            $parameters
        );
    }
}
