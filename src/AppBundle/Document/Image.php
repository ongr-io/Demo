<?php

namespace AppBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\RouterBundle\Document\SeoAwareTrait;

/**
 * @ES\Object
 */
class Image
{
    use SeoAwareTrait;

    /**
     * @var string
     *
     * @ES\Property(type="string")
     */
    public $image;

    /**
     * @var string
     *
     * @ES\Property(type="string")
     */
    public $thumbnail;
} 