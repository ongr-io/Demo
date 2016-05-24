<?php

namespace AppBundle\Twig;

use AppBundle\Document\Language\MultiLanguages;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class TranslationExtension extends \Twig_Extension
{
    /**
     * @var RequestStack
     */
    private $requestStack;

    /**
     * @var UrlGeneratorInterface
     */
    private $urlGenerator;

    /**
     * @var UrlGeneratorInterface
     */
    private $ongrGenerator;

    private $locales;

    /**
     * Contrustor.
     *
     * @param $locales
     */
    public function __construct($locales)
    {
        $this->locales = explode('|', $locales);
    }

    /**
     * @param RequestStack $requestStack
     */
    public function setRequestStack($requestStack)
    {
        $this->requestStack = $requestStack;
    }

    /**
     * @param UrlGeneratorInterface $urlGenerator
     */
    public function setUrlGenerator($urlGenerator)
    {
        $this->urlGenerator = $urlGenerator;
    }

    /**
     * @param UrlGeneratorInterface $ongrGenerator
     */
    public function setOngrGenerator($ongrGenerator)
    {
        $this->ongrGenerator = $ongrGenerator;
    }

    /**
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return [
            new \Twig_Function('render_translation_selection', [$this, 'renderTranslationSelection'], [
                'is_safe' => array('html'),
                'needs_environment' => true
            ])
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getFilters()
    {
        return [
            new \Twig_Filter('translation_text', [$this, 'getTranslationText']),
            new \Twig_Filter('translation_url', [$this, 'getTranslationUrl'])
        ];
    }

    /**
     * Render language selection box.
     *
     * @param \Twig_Environment $twig
     * @param $document
     * @return string
     */
    public function renderTranslationSelection(\Twig_Environment $twig, $document = null)
    {
        $defaultLocale = $this->getCurrentLocale();

        $locales = [];
        $currentRequest = $this->requestStack->getCurrentRequest();
        $route = $currentRequest->get('_route');

        $optionalParam = [];
        if ($currentRequest->query->get('q')) {
            $optionalParam['q'] = $currentRequest->query->get('q');
        }

        foreach ($this->locales as $locale) {
            if ($locale == $defaultLocale) {
                continue;
            }

            $locales[$locale] = strpos($route, 'ongr_route') === 0 ?
                $this->ongrGenerator->generate('ongr_route', [
                    'document' => $document,
                    'locale' => $locale
                ]) :
                $this->urlGenerator->generate($route, array_merge(['_locale' => $locale], $optionalParam));
        }

        return $twig->render('::inc/languages.html.twig', [
            'defaultLocale' => $defaultLocale,
            'locales' => $locales
        ]);
    }

    /**
     * Get translation text in field.
     *
     * @param null|MultiLanguages $doc
     * @param null|string $locale
     * @return string
     */
    public function getTranslationText($doc, $locale = null)
    {
        $locale = $locale ?: $this->getCurrentLocale();
        return $doc ? $doc->{ $locale }->text : '';
    }

    /**
     * Get translation URL in field.
     *
     * @param null|MultiLanguages $doc
     * @param null|string $locale
     * @return string
     */
    public function getTranslationUrl($doc, $locale = null)
    {
        $locale = $locale ?: $this->getCurrentLocale();
        return $doc ? $doc->{ $locale }->url : '';
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'translation';
    }

    /**
     * Get locale from current request.
     *
     * @return string
     */
    private function getCurrentLocale()
    {
        return $this->requestStack->getCurrentRequest()->getLocale();
    }
}
