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

use ONGR\CurrencyExchangeBundle\Service\CurrencyExchangeService;

class CurrencyExtension extends \Twig_Extension
{
    /**
     * @var CurrencyExchangeService
     */
    private $exchanger;

    /**
     * Constructor.
     *
     * @param CurrencyExchangeService $exchanger
     *
     */
    public function __construct(CurrencyExchangeService $exchanger)
    {
        $this->exchanger = $exchanger;
    }

    public function getName()
    {
        return 'currency';
    }

    /**
     * @return \Twig_SimpleFilter[]
     */
    public function getFilters()
    {
        $functions = [];
        $functions[] = new \Twig_SimpleFilter(
            'ongr_price_conversion',
            [$this, 'convertPrice'],
            ['is_safe' => ['html']]
        );

        return $functions;
    }

    /**
     * @param integer $amount
     * @param string  $from
     * @param string  $to
     *
     * @return integer
     */
    public function convertPrice($amount, $from, $to)
    {
        return number_format($this->exchanger->calculateRate($amount, $to, $from), 2);
    }
}