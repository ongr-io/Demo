<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace AppBundle\Routing;

use ONGR\ElasticsearchBundle\Mapping\MetadataCollector;
use ONGR\ElasticsearchBundle\Result\Result;
use ONGR\ElasticsearchBundle\Service\Manager;
use ONGR\ElasticsearchDSL\Query\MatchQuery;
use ONGR\ElasticsearchDSL\Search;
use Symfony\Cmf\Component\Routing\RouteProviderInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Exception\RouteNotFoundException;
use Symfony\Component\Routing\Route;
use Symfony\Component\Routing\RouteCollection;

class AppRouteProvider implements RouteProviderInterface
{
    /**
     * @var array Route map configuration to map Elasticsearch types and Controllers.
     */
    private $routeMap;

    /**
     * @var Manager
     */
    private $manager;

    /**
     * @var MetadataCollector
     */
    private $collector;

    /**
     * @var Locales
     */
    private $locales;

    /**
     * ElasticsearchRouteProvider constructor.
     *
     * @param MetadataCollector $collector
     * @param array $routeMap
     */
    public function __construct($collector, array $routeMap = [], $locales = [])
    {
        $this->collector = $collector;
        $this->routeMap = $routeMap;
        $this->locales = explode('|', trim($locales));
    }

    /**
     * Returns Elasticsearch manager instance that was set in app/config.yml.
     *
     * @return Manager
     */
    public function getManager()
    {
        return $this->manager;
    }

    /**
     * @param Manager $manager
     */
    public function setManager(Manager $manager)
    {
        $this->manager = $manager;
    }
    /**
     * @return array
     */
    public function getRouteMap()
    {
        return $this->routeMap;
    }

    /**
     * @inheritDoc
     */
    public function getRouteCollectionForRequest(Request $request)
    {
        if (!$this->manager) {
            throw new \Exception('Manager must be set to execute query to the elasticsearch');
        }

        // Set locale to request
        $this->setRequestLocale($request);

        $routeCollection = new RouteCollection();
        $requestPath = urldecode($request->getPathInfo());
        $locale = $request->getLocale();

        $search = new Search();
        $urlField = sprintf('url.%s.url', $locale);
        $search->addQuery(new MatchQuery($urlField, $requestPath));

        $results = $this->manager->execute(array_keys($this->routeMap), $search, Result::RESULTS_OBJECT);
        try {
            foreach ($results as $document) {
                $type = $this->collector->getDocumentType(get_class($document));
                if (array_key_exists($type, $this->routeMap)) {
                    $route = new Route(
                        $document->url->$locale->url,
                        [
                            '_controller' => $this->routeMap[$type],
                            'document' => $document,
                            'type' => $type,
                        ]
                    );

                    $routeCollection->add('ongr_route_' . $route->getDefault('type'), $route);
                } else {
                    throw new RouteNotFoundException(sprintf('Route for type %s% cannot be generated.', $type));
                }
            }
        } catch (\Exception $e) {
            throw new RouteNotFoundException('Document is not correct or route cannot be generated.');
        }

        return $routeCollection;
    }

    /**
     * @inheritDoc
     */
    public function getRouteByName($name)
    {
        throw new RouteNotFoundException('Dynamic provider generates routes on the fly.');
    }

    /**
     * @inheritDoc
     */
    public function getRoutesByNames($names)
    {
        // Returns empty Route collection.
        return new RouteCollection();
    }

    /**
     * Set locale to the request
     *
     * @param Request $request
     */
    private function setRequestLocale($request)
    {
        $requestPath = $request->getPathInfo();

        $localePattern = '/^\/([a-z]{2})\/.*$/i';
        $matches = [];
        if (preg_match($localePattern, $requestPath, $matches) &&
            isset($matches[1]) && in_array($matches[1], $this->locales)) {
            $request->setLocale($matches[1]);
        }
    }
}
