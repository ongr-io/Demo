<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\DemoProcessWireBundle\Document;

use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\ProcessWireConnectorBundle\Document\ContentDocument as ParentDocument;

/**
 * ElasticSearch content document.
 *
 * @ES\Document(type="content")
 */
class ContentDocument extends ParentDocument
{
}
