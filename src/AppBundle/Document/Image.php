<?php

namespace AppBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * @ES\Object
 */
class Image
{
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