<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace AppBundle\Twig;

use Symfony\Component\HttpFoundation\RequestStack;

class ProductVariantExtension extends \Twig_Extension
{
    /**
     * @var RequestStack
     */
    private $requestStack;

    /**
     * @param RequestStack $requestStack
     */
    public function setRequestStack($requestStack)
    {
        $this->requestStack = $requestStack;
    }

    /**
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return [
            new \Twig_Function('product_colors', [$this, 'getProductColors']),
            new \Twig_Function('product_materials', [$this, 'getProductMaterials']),
        ];
    }

    /**
     * Returns product colors.
     *
     * @param array $variants
     * @return array
     */
    public function getProductColors($variants)
    {
        $colors = [];
        $variantColors = [];
        $locale = $this->getCurrentLocale();

        foreach ($variants as $variant) {
            if (!isset($variant->color->{ $locale }->text)) {
                continue;
            }
            $color = $variant->color->{ $locale }->text;
            if (!in_array($color, $colors)) {
                $colors[] = $color;
                $variantColors[] = $variant->color;
            }
        }

        return $variantColors;
    }

    /**
     * Returns product materials.
     *
     * @param array $variants
     * @return array
     */
    public function getProductMaterials($variants)
    {
        $materials = [];
        $variantMaterials = [];
        $locale = $this->getCurrentLocale();

        foreach ($variants as $variant) {
            if (!isset($variant->material->{ $locale }->text)) {
                continue;
            }
            $material = $variant->material->{ $locale }->text;
            if (!in_array($material, $materials)) {
                $materials[] = $material;
                $variantMaterials[] = $variant->material;
            }
        }

        return $variantMaterials;
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'product_variant';
    }

    /**
     * Get current locale
     *
     * @return string
     */
    private function getCurrentLocale()
    {
        return $this->requestStack->getCurrentRequest()->getLocale();
    }
}
