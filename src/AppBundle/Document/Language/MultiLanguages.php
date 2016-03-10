<?php

namespace AppBundle\Document\Language;

use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * @ES\Object
 */
class MultiLanguages {

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