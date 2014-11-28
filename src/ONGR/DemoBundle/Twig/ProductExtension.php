<?php
/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\DemoBundle\Twig;

use ONGR\DemoBundle\Document\ProductReview;

/**
 * Twig extension used for calculating product properties.
 */
class ProductExtension extends \Twig_Extension
{
    /**
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return [
            'get_average_rating' => new \Twig_SimpleFunction(
                'getAverageRating',
                [
                    $this,
                    'getAvgRating',
                ]
            ),
        ];
    }

    /**
     * Counts average rating.
     * 
     * @param ProductReview[] $reviews
     * 
     * @return int
     */
    public function getAvgRating($reviews)
    {
        if (empty($reviews)) {
            return 0;
        }

        $avg = 0;
        foreach ($reviews as $review) {
            $avg += $review->rating;
        }

        return $avg / count($reviews);
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'ongr_demo_product_extension';
    }
}
