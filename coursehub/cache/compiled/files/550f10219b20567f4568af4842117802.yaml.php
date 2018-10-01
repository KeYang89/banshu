<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/config/plugins/login.yaml',
    'modified' => 1512496873,
    'data' => [
        'enabled' => true,
        'built_in_css' => true,
        'route' => '/user-login',
        'redirect_to_login' => true,
        'redirect_after_login' => '/',
        'route_activate' => '/activate_user',
        'route_forgot' => '/forgot_password',
        'route_reset' => '/reset_password',
        'route_profile' => '/user_profile',
        'route_register' => '/register',
        'route_unauthorized' => '/user_unauthorized',
        'parent_acl' => false,
        'protect_protected_page_media' => false,
        'user_registration' => [
            'enabled' => true,
            'fields' => [
                0 => '用户名 username',
                1 => '密码 password',
                2 => '邮件 email',
                3 => '姓名 fullname',
                4 => '职位 title',
                5 => '微信号 wechat'
            ],
            'access' => [
                'site' => [
                    'login' => 'true'
                ]
            ],
            'options' => [
                'validate_password1_and_password2' => true,
                'set_user_disabled' => false,
                'login_after_registration' => true,
                'send_activation_email' => false,
                'send_notification_email' => false,
                'send_welcome_email' => '0'
            ],
            'redirect_after_registration' => '/',
            'redirect_after_activation' => '/'
        ],
        'rememberme' => [
            'enabled' => true,
            'timeout' => 604800,
            'name' => 'grav-rememberme'
        ],
        'max_pw_resets_count' => 0,
        'max_pw_resets_interval' => 60,
        'max_login_count' => 0,
        'max_login_interval' => 2
    ]
];
