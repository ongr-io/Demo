<?php

namespace AppBundle\Document\Variant;

use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * @ES\Object
 */
class Variant
{
    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $color;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $material;

    /**
     * @var Image
     *
     * @ES\Embedded(class="AppBundle:Image")
     */
    public $images;
} 