<?php

use SBWebApplication\Application;



return [
    'name' => 'slideshow-widget',

    'main' => function(Application $app) {

    },

    'autoload' => [
        'Seniorslideshow\\Slideshow\\' => 'src'
    ],

    'resources' => [
        'slideshow-widget:' => ''
    ],

    'routes' => [
        '/slideshow' => [
            'name' => '@slideshow-widget',
            'controller' => 'Seniorslideshow\\Slideshow\\Controller\\SlideshowController'
        ]
    ],

    'widgets' => [
        'widgets/slideshow.php'
    ],
];