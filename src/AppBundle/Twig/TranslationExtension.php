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
     * @param \Twig_Environment $twig
     * @param $document
     * @return string
     */
    public function renderTranslationSelection(\Twig_Environment $twig, $document = null)
    {
        $defaultLocale = $this->getCurrentLocale();

        $locales = [];
        $route = $this->requestStack->getCurrentRequest()->get('_route');
        foreach ($this->locales as $locale) {
            if ($locale == $defaultLocale) {
                continue;
            }

            $locales[$locale] = in_array($route, ['app_homepage', 'app_search_page']) ?
                $this->urlGenerator->generate($route, ['_locale' => $locale]) :
                $this->ongrGenerator->generate('ongr_route', ['document' => $document, 'locale' => $locale]);
        }

        return $twig->render('::inc/languages.html.twig', [
            'defaultLocale' => $defaultLocale,
            'locales' => $locales
        ]);
    }

    /**
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

    private function getCurrentLocale()
    {
        return $this->requestStack->getCurrentRequest()->getLocale();
    }
}
