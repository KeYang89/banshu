<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/plugins/taxonomylist/blueprints.yaml',
    'modified' => 1512492131,
    'data' => [
        'name' => 'Taxonomy List',
        'version' => '1.3.1',
        'description' => 'With the **TaxonomyList plugin** you can easily create list of **taxonomy** items such as **tags**, **categories**, etc.',
        'icon' => 'tag',
        'author' => [
            'name' => 'Team Grav',
            'email' => 'devs@getgrav.org',
            'url' => 'http://getgrav.org'
        ],
        'homepage' => 'https://github.com/getgrav/grav-plugin-taxonomylist',
        'demo' => 'http://demo.getgrav.org/blog-skeleton',
        'keywords' => 'taxonomylist, plugin, taxonomy, list, tags, categories',
        'bugs' => 'https://github.com/getgrav/grav-plugin-taxonomylist/issues',
        'license' => 'MIT',
        'form' => [
            'validation' => 'strict',
            'fields' => [
                'enabled' => [
                    'type' => 'toggle',
                    'label' => 'Plugin status',
                    'highlight' => 1,
                    'default' => 0,
                    'options' => [
                        1 => 'Enabled',
                        0 => 'Disabled'
                    ],
                    'validate' => [
                        'type' => 'bool'
                    ]
                ],
                'route' => [
                    'type' => 'text',
                    'label' => 'Route to blog',
                    'placeholder' => '/blog',
                    'validate' => [
                        'pattern' => '/([a-z\\-_]+/?)+'
                    ]
                ]
            ]
        ]
    ]
];
