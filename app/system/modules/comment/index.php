<?php

use SBWebApplication\Comment\CommentPlugin;

return [

    'name' => 'system/comment',

    'main' => function ($app) {

        $app->subscribe(new CommentPlugin);

    },

    'autoload' => [

        'SBWebApplication\\Comment\\' => 'src'

    ]

];
