<?php

namespace AppBundle\Document\Variant;

use AppBundle\Document\Language\MultiLanguages;
use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * @ES\Object
 */
class Variant
{
    /**
     * @var string
     */
    public $key;

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
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $description;

    /**
     * @var integer
     *
     * @ES\Property(type="integer")
     */
    public $price;
}
