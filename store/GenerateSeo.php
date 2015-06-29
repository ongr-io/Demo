<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

require_once dirname(__FILE__) . '/oxid/bootstrap.php';

$list = oxNew('oxlist');
$list->init('oxarticle');
$list->selectString('select * from oxarticles');

foreach ($list as $article) {
    $article->save();
}

$list = oxNew('oxlist');
$list->init('oxcontent');
$list->selectString('select * from oxcontents');

foreach ($list as $content) {
    $content->save();
}

$list = oxNew('oxlist');
$list->init('oxcategory');
$list->selectString('select * from oxcategories');

foreach ($list as $category) {
    $category->save();
}
