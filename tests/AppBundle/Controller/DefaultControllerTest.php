<?php

namespace Tests\AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class DefaultControllerTest extends WebTestCase
{
    /**
     * Test index with a locale
     */
    public function testIndexWithLocale()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/en/');

        $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }
}
