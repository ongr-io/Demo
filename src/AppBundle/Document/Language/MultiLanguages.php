<?php

namespace AppBundle\Document\Language;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\RouterBundle\Document\SeoAwareTrait;

/**
 * @ES\Object
 */
class MultiLanguages {

    use SeoAwareTrait;

    /**
     * @var Language
     * @ES\Embedded(class="AppBundle:Language\Language")
     */
    public $en;

    /**
     * @var Language
     * @ES\Embedded(class="AppBundle:Language\Language")
     */
    public $fr;

    /**
     * @var Language
     * @ES\Embedded(class="AppBundle:Language\Language")
     */
    public $de;

} 