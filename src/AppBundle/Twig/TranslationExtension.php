<?php

namespace AppBundle\Twig;

use AppBundle\Document\Language\MultiLanguages;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class LanguageExtension extends \Twig_Extension
{
    /**
     * @var RequestStack
     */
    private $requestStack;

    /**
     * @var UrlGeneratorInterface
     */
    private $urlGenerator;

    private $locales;

    /**
     * Contrustor.
     *
     * @param $locales
     */
    public function __construct($locales)
    {
        $this->locales = $locales;
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
     * {@inheritdoc}
     */
    public function getFunctions()
    {
        return [
            new \Twig_Function('renderTranslationSelection', [$this, 'renderTranslationSelection'], [
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
            new \Twig_Filter('translationText', [$this, 'getTranslationText']),
            new \Twig_Filter('translationUrl', [$this, 'getTranslationUrl'])
        ];
    }

    public function renderTranslationSelection(\Twig_Environment $twig, $document)
    {
        throw \Exception('Not implement');
    }

    public function getTranslationText(MultiLanguages $doc, $locale)
    {
        $locale = $locale ?: $this->getCurrentLocale();
        return $doc->{ $locale }->text;
    }

    public function getTranslationUrl(MultiLanguages $doc, $locale)
    {
        $locale = $locale ?: $this->getCurrentLocale();
        return $doc->{ $locale }->url;
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
