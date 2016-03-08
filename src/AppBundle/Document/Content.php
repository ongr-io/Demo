<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace AppBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\RouterBundle\Document\SeoAwareTrait;

/**
 * @ES\Document()
 */
class Content
{
    /**
     * @var string
     *
     * @ES\Id()
     */
    public $id;

    /**
     * @var MultiLanguages
     *
     * @ES\Embedded(class="AppBundle:Language\MultiLanguages")
     */
    public $slug;

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
    public $content;
}
