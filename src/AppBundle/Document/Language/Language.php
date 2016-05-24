<?php

namespace AppBundle\Document\Language;

use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * @ES\Object
 */
class Language
{
    /**
     * @var string
     *
     * @ES\Property(
     *     type="string",
     *     options={
     *        "fields"={
     *          "raw"={"type"="string", "index"="not_analyzed"},
     *          "text"={"type"="string"}
     *        }
     *     }
     *   )
     */
    public $text;

    /**
     * @var string
     *
     * @ES\Property(name="url", type="string", options={"analyzer"="urlAnalyzer"})
     */
    public $url;
}
