<?php

    return [

        'name' => 'calendar',

        'type' => 'extension',

        // array of namespaces to autoload from given folders
        'autoload' => [
            'SJZDwaijiao\\Calendar\\' => 'src'
        ],
        

        // array of routes
        'routes' => [

            // identifier to reference the route from your code
            '/calendar' => [
                'name' => '@calendar',
                'controller' => [
                    'SJZDwaijiao\\Calendar\\Controller\\CalendarController',
                    'SJZDwaijiao\\Calendar\\Controller\\SiteController'
                ]
            ],
            
            // identifier to reference the route from your code
            '/api/calendar' => [
                'name' => '@calendar/api',
                'controller' => [
                    'SJZDwaijiao\\Calendar\\Controller\\CategoryApiController',
                    'SJZDwaijiao\\Calendar\\Controller\\EventApiController',
                ]
            ]
        ],
        
        'menu' => [

            'calendar' => [
                'label'  => '外教日程管理',
                'icon'   => 'packages/sjzd_waijiao/calendar/icon.svg',
                'url'    => '@calendar/categories',
                'active' => '@calendar/categories/*',
            ],

            'calendar: categories' => [
                'parent' => 'calendar',
                'label'  => 'Categories',
                'icon'   => 'packages/sjzd_waijiao/calendar/icon.svg',
                'url'    => '@calendar/categories',
                'active' => '@calendar/categories*',
                'access' => 'calendar: manage own categories'
            ],
            
            'calendar: events' => [
                'parent' => 'calendar',
                'label'  => 'Events',
                'icon'   => 'packages/sjzd_waijiao/calendar/icon.svg',
                'url'    => '@calendar/events',
                'active' => '@calendar/events*',
                'access' => 'calendar: manage own events'
            ],
            
            'calendar: settings' => [
                'parent' => 'calendar',
                'label'  => 'Settings',
                'url'    => '@calendar/settings',
                'active' => '@calendar/settings*',
                'access' => 'system: access settings',
            ],
        ],
        
        'permissions' => [

            'calendar: manage settings' => [
                'title' => 'Manage settings',
            ],
            'calendar: manage categories' => [
                'title' => 'Manage categories',
            ],
            'calendar: manage events' => [
                'title' => 'Manage events',
            ],
        ],
        
        'settings' => '@calendar/settings',

        'config' => [
            'general' => [
                'title' => 'Calendar',
                'loadingindicator' => true
            ],
            'calendar' => [
                'views' => [
                    'month' => true,
                    'week' => true,
                    'day' => true,
                    'list' => 'none',
                    'default' => 'month'
                ],
                'buttons' => [
                    'today' => true,
                    'prevnext' => true,
                    'changecategories' => true
                ],
                'pagesize' => 25
            ]
        ],
        
        'events' => [
            'view.scripts' => function ($event, $scripts) {
                $scripts->register('calendar-link', 'calendar:app/bundle/link-calendar.js', '~panel-link');
            },

        ]
    ];