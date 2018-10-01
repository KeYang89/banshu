<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/config/site.yaml',
    'modified' => 1512497403,
    'data' => [
        'title' => '学生管理平台',
        'default_lang' => 'cn',
        'author' => [
            'name' => 'Some Dev',
            'email' => 'yangkecoy@gmail.com'
        ],
        'taxonomies' => [
            0 => 'category',
            1 => 'tag',
            2 => 'author'
        ],
        'metadata' => [
            'description' => 'A short description of your course would go here'
        ],
        'summary' => [
            'enabled' => true,
            'format' => 'short',
            'size' => 300,
            'delimiter' => '==='
        ],
        'blog' => [
            'route' => '/blog'
        ],
        'chromeless' => [
            'enabled' => false
        ],
        'gitrepo' => [
            'editlinklocation' => 'none',
            'editthemelinklocation' => 'none',
            'editthemelinktext' => 'Site Theme Files',
            'typeofgitsyncrepolink' => 'edit',
            'editnotetext' => 'Have a suggestion?'
        ],
        'displaymenuentries' => [
            'enabled' => false
        ],
        'menu' => [
            0 => [
                'text' => 'SeniorKnows',
                'icon' => 'arrow-circle-right',
                'url' => 'http://seniorknows.com/'
            ]
        ],
        'hidehomemenulink' => false,
        'hidesidebaronblogpages' => [
            'enabled' => false
        ],
        'twittertimeline' => [
            'enabled' => false,
            'url' => 'https://twitter.com/hibbittsdesign/lists/cpt-363',
            'text' => 'A Twitter Lists by @hibbittsdesign',
            'height' => 700
        ],
        'cc_license' => [
            'enabled' => false,
            'type' => 'ccby',
            'icon' => false
        ],
        'hidesidebaronblog' => [
            'enabled' => '0'
        ],
        'chromelesspages' => [
            'enabled' => false
        ],
        'icon' => [
            'post' => 'calendar-o'
        ]
    ]
];
