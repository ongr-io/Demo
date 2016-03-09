<?php

namespace AppBundle\Routing;

use ONGR\ElasticsearchBundle\Mapping\MetadataCollector;
use Symfony\Cmf\Component\Routing\ProviderBasedGenerator;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Exception\RouteNotFoundException;
use Symfony\Component\Routing\Route;

class AppUrlGenerator extends ProviderBasedGenerator
{
    /**
     * @var array Route map configuration to map Elasticsearch types and Controllers.
     */
    private $routeMap;

    /**
     * @var MetadataCollector
     */
    private $collector;

    /**
     * @var Request
     */
    private $request;

    /**
     * @return mixed
     */
    public function getRouteMap()
    {
        return $this->routeMap;
    }

    /**
     * @param mixed $routeMap
     */
    public function setRouteMap($routeMap)
    {
        $this->routeMap = $routeMap;
    }

    /**
     * @return MetadataCollector
     */
    public function getCollector()
    {
        return $this->collector;
    }

    /**
     * @param MetadataCollector $collector
     */
    public function setCollector(MetadataCollector $collector)
    {
        $this->collector = $collector;
    }

    /**
     * Checks if the $name is a valid string for a route
     * @param $name
     * @throws RouteNotFoundException
     */
    private function nameHandle($name)
    {
        if (!is_string($name)) {
            throw new RouteNotFoundException('Route ' . $name . ' is not a string');
        }
        if ($name != 'ongr_route') {
            throw new RouteNotFoundException('Route ' . $name . ' is not a valid name: make sure the name is ongr_route');
        }
    }

    /**
     * {@inheritdoc}
     */
    public function generate($name, $parameters = array(), $referenceType = self::ABSOLUTE_PATH)
    {
        try {
            $document = $parameters['document'];

            if (isset($parameters['locale'])) {
                $locale = $parameters['locale'];
                unset($parameters['locale']);
            } else {
                $locale = $this->context->getParameters()['_locale'];
            }

            $this->nameHandle($name);
            if (is_object($document)) {
                $documentUrl = isset($document->url)? $document->url->$locale->url:null;
            } else {
                $documentUrl = isset($document['url'])? $document['url'][$locale]['url']:null;
            }

            $type = $this->collector->getDocumentType(get_class($document));
            $route = new Route(
                $documentUrl,
                [
                    '_controller' => $this->routeMap[$type],
                    'document' => $document,
                    'type' => $type,
                ]
            );

            // the Route has a cache of its own and is not recompiled as long as it does not get modified
            $compiledRoute = $route->compile();
            $hostTokens = $compiledRoute->getHostTokens();

            $debug_message = $this->getRouteDebugMessage($name);

            return $this->doGenerate(
                $compiledRoute->getVariables(),
                $route->getDefaults(),
                $route->getRequirements(),
                $compiledRoute->getTokens(),
                $parameters,
                $debug_message,
                $referenceType,
                $hostTokens
            );

        } catch (\Exception $e) {
            throw new RouteNotFoundException('Document is not correct or route cannot be generated.');
        }
    }
}
