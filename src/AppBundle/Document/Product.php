<?php

namespace AppBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;
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
     * @ES\Embedded(class="AppBundle:Image", multiple=true)
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
}