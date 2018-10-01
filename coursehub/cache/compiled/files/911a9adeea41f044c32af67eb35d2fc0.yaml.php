<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/config/plugins/admin.yaml',
    'modified' => 1512492088,
    'data' => [
        'enabled' => true,
        'route' => '/admin',
        'cache_enabled' => false,
        'theme' => 'grav',
        'content_padding' => false,
        'sidebar' => [
            'activate' => 'tab',
            'hover_delay' => 100,
            'size' => 'auto'
        ],
        'dashboard' => [
            'days_of_stats' => 7
        ],
        'widgets' => [
            'dashboard-maintenance' => true,
            'dashboard-statistics' => true,
            'dashboard-notifications' => false,
            'dashboard-feed' => false,
            'dashboard-pages' => true
        ],
        'pages' => [
            'show_parents' => 'both'
        ],
        'session' => [
            'timeout' => 1800
        ],
        'warnings' => [
            'delete_page' => true
        ],
        'edit_mode' => 'normal',
        'frontend_pages_target' => '_blank',
        'show_github_msg' => true,
        'pages_list_display_field' => 'title',
        'google_fonts' => true,
        'enable_auto_updates_check' => false,
        'notifications' => [
            'feed' => true,
            'dashboard' => true,
            'plugins' => true,
            'themes' => true
        ],
        'popularity' => [
            'enabled' => true,
            'ignore' => [
                0 => '/test*',
                1 => '/modular'
            ],
            'history' => [
                'daily' => '30',
                'monthly' => '12',
                'visitors' => '20'
            ]
        ]
    ]
];
