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

use AppBundle\Document\Product;
use ONGR\ElasticsearchBundle\Service\Manager;
use ONGR\ElasticsearchDSL\Search;

class ProductListExtension extends \Twig_Extension
{
    /**
     * @var Manager
     */
    private $manager;

    /**
     * Constructor.
     *
     * @param $manager
     */
    public function __construct($manager)
    {
        $this->manager = $manager;
    }

    /**
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return [
            new \Twig_Function('top_products', [$this, 'getTopProducts']),
            new \Twig_Function('product_image', [$this, 'getProductImage']),
            new \Twig_Function('product_attributes', [$this, 'getProductAttributes']),
        ];
    }

    /**
     * Returns image from variant.
     *
     * @param Product $product
     * @return string
     */
    public function getProductImage($product)
    {
        try {
            $image = $product->images[0];
            return $image;
        } catch (\Exception $e) {
            return 'no_image';
        }
    }

    /**
     * Returns attributes from product.
     *
     * @param Product $product
     * @return string
     */
    public function getProductAttributes($product)
    {
        try {
            $attributes = json_decode($product->attributes, true);
            $output = [];
            foreach ($attributes as $attribute) {
                $output[ucfirst($attribute['name'])] = implode(',', $attribute['values']);
            }

            return $output;
        } catch (\Exception $e) {
            return null;
        }
    }

    /**
     * Returns top products.
     * @return mixed
     */
    public function getTopProducts()
    {
        $repository = $this->manager->getRepository('AppBundle:Product');
        $names = [
            'Bread Board Set Plato',
            'Chip & Dip Set Chipster',
            'Salad Bowl Savore',
            'Cage Clock',
            'Tray Set Spun Lazy Susan',
            'Photo Display U Love',
            'Candleholder Nordic Light 4 arms'
        ];
        $products =[];
        foreach ($names as $name) {
            $products[] = $repository->findOneBy(['title.en.text' => $name]);
        }

        return $products;
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'product_list';
    }
}
