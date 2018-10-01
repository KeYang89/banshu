<?php

use SBWebApplication\Application as App;

return [
    'name' => 'seniorslideshow/slideshowWidget',

    'label' => '图片播放',

    'events' => [
        'view.scripts' => function ($event, $scripts) use ($app) {

            $scripts->register('widget-slideshow', 'slideshow-widget:app/bundle/widget-slideshow.js', ['~widgets']);
        }
    ],

    'render' => function ($widget) use ($app) {
        $images = $widget->get('images');
        $config = $widget->get('config');

        if($images == null) $images = [];

        return $app->view('slideshow-widget/widget/slideshow.php', compact('images', 'config'));
    }
];