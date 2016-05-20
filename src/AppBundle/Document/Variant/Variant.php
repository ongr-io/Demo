<?php

namespace AppBundle\Document\Variant;

use AppBundle\Document\Language\MultiLanguages;
use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\ElasticsearchBundle\Collection\Collection;

/**
 * @ES\Object
 */
class Variant
{
    /**
     * @var string
     *
     * @ES\Property(type="string")
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
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages", multiple=true)
     */
    public $materials;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages", multiple=true)
     */
    public $attributes;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $description;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $people;

    /**
     * @var integer
     *
     * @ES\Property(type="integer")
     */
    public $price;

    /**
     * @var array
     *
     * @ES\Property(type="string")
     */
    public $images;

    /**
     * @var integer
     *
     * @ES\Property(type="float")
     */
    public $height;

    /**
     * @var integer
     *
     * @ES\Property(type="float")
     */
    public $width;

    /**
     * @var integer
     *
     * @ES\Property(type="float")
     */
    public $length;

    /**
     * @var integer
     *
     * @ES\Property(type="float")
     */
    public $weight;

    public function __construct()
    {
        $this->attributes = new Collection();
        $this->materials = new Collection();
    }
}
