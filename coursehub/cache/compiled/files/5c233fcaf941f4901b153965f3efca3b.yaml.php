<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/config/plugins/git-sync.yaml',
    'modified' => 1512497047,
    'data' => [
        'enabled' => false,
        'text_var' => 'Custom Text added by the **Git Sync** plugin (disable plugin to remove)',
        'folders' => [
            0 => 'pages',
            1 => 'themes'
        ],
        'webhook' => '/_git-sync',
        'branch' => 'master',
        'remote' => [
            'name' => 'origin',
            'branch' => 'master'
        ],
        'git' => [
            'author' => 'gituser',
            'name' => 'GitSync',
            'email' => 'git-sync@trilby.media',
            'bin' => 'git'
        ],
        'logging' => false
    ]
];
