<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/themes/course-hub-bootstrap/blueprints.yaml',
    'modified' => 1512492133,
    'data' => [
        'name' => 'Course Hub Bootstrap',
        'version' => '1.9.5',
        'description' => 'A customized version of the Bootstrap theme (built with Bootstrap 3) for use with the Grav Course Hub skeleton package.',
        'icon' => 'university',
        'author' => [
            'name' => 'Paul Hibbitts',
            'email' => 'paul@hibbittsdesign.org',
            'url' => 'http://hibbittsdesign.org'
        ],
        'homepage' => 'https://github.com/hibbitts-design/grav-theme-course-hub-bootstrap',
        'demo' => 'http://demo.hibbittsdesign.org/grav-course-hub-bootstrap',
        'keywords' => 'bootstrap, theme, framework, course, lms',
        'bugs' => 'https://github.com/hibbitts-design/grav-theme-course-hub-bootstrap/issues',
        'license' => 'MIT',
        'dependencies' => [
            0 => 'bootstrap',
            1 => 'bootstrapper',
            2 => 'admin',
            3 => 'archives',
            4 => 'email',
            5 => 'error',
            6 => 'external_links',
            7 => 'featherlight',
            8 => 'feed',
            9 => 'form',
            10 => 'git-sync',
            11 => 'login',
            12 => 'markdown-fontawesome',
            13 => 'markdown-notices',
            14 => 'page-inject',
            15 => 'pagination',
            16 => 'problems',
            17 => 'relatedpages',
            18 => 'simplesearch',
            19 => 'taxonomylist',
            20 => 'youtube'
        ],
        'form' => [
            'validation' => 'strict',
            'fields' => [
                'dropdown.enabled' => [
                    'type' => 'toggle',
                    'label' => 'Dropdown in navbar',
                    'highlight' => 1,
                    'default' => 1,
                    'options' => [
                        1 => 'Enabled',
                        0 => 'Disabled'
                    ],
                    'validate' => [
                        'type' => 'bool'
                    ]
                ]
            ]
        ]
    ]
];
