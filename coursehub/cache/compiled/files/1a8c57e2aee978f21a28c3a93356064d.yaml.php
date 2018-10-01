<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/themes/mytheme/blueprints.yaml',
    'modified' => 1512492133,
    'data' => [
        'name' => 'My Theme',
        'version' => '1.0.0',
        'description' => 'Customizing Course Hub Bootstrap',
        'icon' => 'crosshairs',
        'author' => [
            'name' => 'Paul Hibbitts',
            'email' => 'paul@hibbittsdesign.org',
            'url' => 'http://hibbittsdesign.org'
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
