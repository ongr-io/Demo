<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace AppBundle\DependencyInjection;

use ONGR\FilterManagerBundle\DependencyInjection\Filter\AbstractFilterFactory;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use ONGR\FilterManagerBundle\DependencyInjection\Configuration;
use Symfony\Component\HttpKernel\DependencyInjection\Extension;
use Symfony\Component\DependencyInjection\Loader;

/**
 * This is the class that loads and manages bundle configuration.
 */
class AppExtension extends Extension
{
    /**
     * @var AbstractFilterFactory[]
     */
    protected $factories = [];

    /**
     * {@inheritdoc}
     */
    public function load(array $configs, ContainerBuilder $container)
    {
        $configuration = new Configuration();
        $config = $this->processConfiguration($configuration, $configs);

        $container->setParameter('sort_choices', $config['filters']['sort']['sorting']['choices']);
    }
}
