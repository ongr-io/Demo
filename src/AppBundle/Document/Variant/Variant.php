<?php

namespace AppBundle\Document\Variant;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\RouterBundle\Document\SeoAwareTrait;

/**
 * @ES\Object
 */
class Variant
{
    use SeoAwareTrait;

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