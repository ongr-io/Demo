<?php

namespace AppBundle\Document\Language;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\RouterBundle\Document\SeoAwareTrait;

/**
 * @ES\Object
 */
class Language
{
    /**
     * @var string
     *
     * @ES\Property(type="string")
     */
    public $text;

    /**
     * @var string
     *
     * @ES\Property(type="string", options={"index"="not_analyzed"})
     */
    public $url;

    /**
     * @var string
     *
     * @ES\Property(type="string", options={"index"="not_analyzed"})
     */
    public $image;
}
