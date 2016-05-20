<?php

namespace AppBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\ElasticsearchBundle\Collection\Collection;
use AppBundle\Document\Language\MultiLanguages;
use AppBundle\Document\Variant\Variant;

/**
 * @ES\Document()
 */
class Product
{
    /**
     * @ES\Id()
     */
    public $id;

    /**
     * @ES\Property(type="string", options={"index"="not_analyzed"})
     */
    public $key;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $title;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $description;

    /**
     * @ES\Property(type="string", options={"index"="not_analyzed"})
     */
    public $brand;

    /**
     * @var array
     *
     * @ES\Property(type="string")
     */
    public $images;

    /**
     * @ES\Property(type="float")
     */
    public $price;

    /**
     * @ES\Property(type="string", options={"index"="not_analyzed"})
     */
    public $categoryKeys;

    /**
     * @var Variant
     *
     * @ES\Embedded(class="AppBundle:Variant\Variant", multiple=true)
     */
    public $variants;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $url;

    public function __construct()
    {
        $this->variants = new Collection();
    }
}
