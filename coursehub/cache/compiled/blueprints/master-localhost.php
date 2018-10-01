<?php
return [
    '@class' => 'Grav\\Common\\Config\\CompiledBlueprints',
    'timestamp' => 1512497443,
    'checksum' => 'c3b331cfd5a69b0ad2f2850dac00fbce',
    'files' => [
        'user/blueprints/config' => [
            'site' => [
                'file' => 'user/blueprints/config/site.yaml',
                'modified' => 1512492088
            ]
        ],
        'system/blueprints/config' => [
            'media' => [
                'file' => 'system/blueprints/config/media.yaml',
                'modified' => 1512492149
            ],
            'site' => [
                'file' => 'system/blueprints/config/site.yaml',
                'modified' => 1512492149
            ],
            'streams' => [
                'file' => 'system/blueprints/config/streams.yaml',
                'modified' => 1512492148
            ],
            'system' => [
                'file' => 'system/blueprints/config/system.yaml',
                'modified' => 1512492149
            ]
        ],
        'user/plugins' => [
            'plugins/admin' => [
                'file' => 'user/plugins/admin/blueprints.yaml',
                'modified' => 1512493320
            ],
            'plugins/archives' => [
                'file' => 'user/plugins/archives/blueprints.yaml',
                'modified' => 1512492116
            ],
            'plugins/bootstrapper' => [
                'file' => 'user/plugins/bootstrapper/blueprints.yaml',
                'modified' => 1512492122
            ],
            'plugins/email' => [
                'file' => 'user/plugins/email/blueprints.yaml',
                'modified' => 1512492125
            ],
            'plugins/error' => [
                'file' => 'user/plugins/error/blueprints.yaml',
                'modified' => 1512492122
            ],
            'plugins/external_links' => [
                'file' => 'user/plugins/external_links/blueprints.yaml',
                'modified' => 1512492117
            ],
            'plugins/featherlight' => [
                'file' => 'user/plugins/featherlight/blueprints.yaml',
                'modified' => 1512492131
            ],
            'plugins/feed' => [
                'file' => 'user/plugins/feed/blueprints.yaml',
                'modified' => 1512492118
            ],
            'plugins/form' => [
                'file' => 'user/plugins/form/blueprints.yaml',
                'modified' => 1512492089
            ],
            'plugins/git-sync' => [
                'file' => 'user/plugins/git-sync/blueprints.yaml',
                'modified' => 1512493552
            ],
            'plugins/login' => [
                'file' => 'user/plugins/login/blueprints.yaml',
                'modified' => 1512492123
            ],
            'plugins/markdown-fontawesome' => [
                'file' => 'user/plugins/markdown-fontawesome/blueprints.yaml',
                'modified' => 1512492117
            ],
            'plugins/markdown-notices' => [
                'file' => 'user/plugins/markdown-notices/blueprints.yaml',
                'modified' => 1512492089
            ],
            'plugins/page-inject' => [
                'file' => 'user/plugins/page-inject/blueprints.yaml',
                'modified' => 1512492116
            ],
            'plugins/pagination' => [
                'file' => 'user/plugins/pagination/blueprints.yaml',
                'modified' => 1512492089
            ],
            'plugins/problems' => [
                'file' => 'user/plugins/problems/blueprints.yaml',
                'modified' => 1512492116
            ],
            'plugins/relatedpages' => [
                'file' => 'user/plugins/relatedpages/blueprints.yaml',
                'modified' => 1512492092
            ],
            'plugins/simplesearch' => [
                'file' => 'user/plugins/simplesearch/blueprints.yaml',
                'modified' => 1512492092
            ],
            'plugins/taxonomylist' => [
                'file' => 'user/plugins/taxonomylist/blueprints.yaml',
                'modified' => 1512492131
            ],
            'plugins/youtube' => [
                'file' => 'user/plugins/youtube/blueprints.yaml',
                'modified' => 1512492117
            ]
        ]
    ],
    'data' => [
        'items' => [
            'site' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'site.title' => [
                'type' => 'text',
                'label' => 'PLUGIN_ADMIN.SITE_TITLE',
                'size' => 'large',
                'name' => 'site.title',
                'validation' => 'loose'
            ],
            'site.default_lang' => [
                'type' => 'text',
                'label' => 'PLUGIN_ADMIN.SITE_DEFAULT_LANG',
                'size' => 'x-small',
                'name' => 'site.default_lang',
                'validation' => 'loose'
            ],
            'site.author' => [
                'type' => '_parent',
                'name' => 'site.author',
                'form_field' => false
            ],
            'site.author.name' => [
                'type' => 'text',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.DEFAULT_AUTHOR',
                'name' => 'site.author.name',
                'validation' => 'loose'
            ],
            'site.author.email' => [
                'type' => 'text',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.DEFAULT_EMAIL',
                'validate' => [
                    'type' => 'email'
                ],
                'name' => 'site.author.email',
                'validation' => 'loose'
            ],
            'site.taxonomies' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.TAXONOMY_TYPES',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'site.taxonomies',
                'validation' => 'loose'
            ],
            'site.content' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.content',
                'validation' => 'loose'
            ],
            'site.chromeless' => [
                'type' => '_parent',
                'name' => 'site.chromeless',
                'form_field' => false
            ],
            'site.chromeless.enabled' => [
                'type' => 'toggle',
                'label' => 'Hide Global Navigation Elements on all Pages',
                'description' => 'When enabled, all global navigation elements will be hidden and only content will be displayed for all site pages. To selectively display only content, append \'/chromeless:true\' to the URL of a site page.',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'Yes',
                    0 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.chromeless.enabled',
                'validation' => 'loose'
            ],
            'site.sectionone' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionone',
                'validation' => 'loose'
            ],
            'site.gitrepo' => [
                'type' => '_parent',
                'name' => 'site.gitrepo',
                'form_field' => false
            ],
            'site.gitrepo.editlinklocation' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Display of Git Sync Link',
                'default' => 'menu',
                'options' => [
                    'menu' => 'Menu',
                    'page' => 'Page (visible when \'Chromeless\')',
                    'footer' => 'Footer',
                    'none' => 'None'
                ],
                'name' => 'site.gitrepo.editlinklocation',
                'validation' => 'loose'
            ],
            'site.gitrepo.typeofgitsyncrepolink' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Type of Git Sync Link',
                'default' => 'edit',
                'options' => [
                    'view' => 'View Git Repository',
                    'edit' => 'View/Edit Page in Git Repository'
                ],
                'name' => 'site.gitrepo.typeofgitsyncrepolink',
                'validation' => 'loose'
            ],
            'site.sectiontwo' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectiontwo',
                'validation' => 'loose'
            ],
            'site.gitrepo.editnotetext' => [
                'type' => 'input.text',
                'size' => 'long',
                'label' => 'Text before Git Sync Link on Pages',
                'description' => 'The text before the Git Sync link when displayed on a page, e.g. \'Have a suggestion or correction?\'.',
                'name' => 'site.gitrepo.editnotetext',
                'validation' => 'loose'
            ],
            'site.gitrepo.editlinkicon' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'Custom Git Sync Font Awesome Icon',
                'description' => 'Short name, e.g. \'code-fork\'.',
                'validate' => [
                    'type' => 'text'
                ],
                'name' => 'site.gitrepo.editlinkicon',
                'validation' => 'loose'
            ],
            'site.gitrepo.editlinktext' => [
                'type' => 'input.text',
                'size' => 'medium',
                'label' => 'Custom Git Sync Link Text',
                'description' => 'Git Sync link text, e.g. \'View Page in GitHub\'.',
                'name' => 'site.gitrepo.editlinktext',
                'validation' => 'loose'
            ],
            'site.gitrepo.edittreeurl' => [
                'type' => 'text',
                'size' => 'long',
                'label' => 'Custom Git Repository Tree URL',
                'description' => 'URL path to the pages folder, but with \'/pages\' and everything following it removed. For example, \'https://github.com/paulhibbitts/demo-grav-course-hub/tree/master\'.',
                'validate' => [
                    'type' => 'URL'
                ],
                'name' => 'site.gitrepo.edittreeurl',
                'validation' => 'loose'
            ],
            'site.sectionthree' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionthree',
                'validation' => 'loose'
            ],
            'site.gitrepo.editthemelinklocation' => [
                'type' => 'select',
                'label' => 'Display of Site Theme Files Link',
                'default' => 'None',
                'size' => 'small',
                'options' => [
                    'footer' => 'Footer',
                    'none' => 'None'
                ],
                'name' => 'site.gitrepo.editthemelinklocation',
                'validation' => 'loose'
            ],
            'site.gitrepo.editthemelinktext' => [
                'type' => 'input.text',
                'size' => 'medium',
                'label' => 'Site Theme Files Link Text',
                'default' => 'Site Theme Files',
                'description' => 'Customize the Site Theme Files link text.',
                'name' => 'site.gitrepo.editthemelinktext',
                'validation' => 'loose'
            ],
            'site.sectionfour' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionfour',
                'validation' => 'loose'
            ],
            'site.displaymenuentries' => [
                'type' => '_parent',
                'name' => 'site.displaymenuentries',
                'form_field' => false
            ],
            'site.displaymenuentries.enabled' => [
                'type' => 'toggle',
                'label' => 'Display Custom Menubar Items',
                'default' => 0,
                'highlight' => 1,
                'options' => [
                    1 => 'Yes',
                    0 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.displaymenuentries.enabled',
                'validation' => 'loose'
            ],
            'site.menu' => [
                'name' => 'site.menu',
                'type' => 'list',
                'label' => 'Custom Menubar Items',
                'validation' => 'loose'
            ],
            'site.menu.text' => [
                'type' => 'text',
                'label' => 'Text',
                'name' => 'site.menu.text',
                'validation' => 'loose'
            ],
            'site.menu.icon' => [
                'type' => 'text',
                'label' => 'Icon',
                'name' => 'site.menu.icon',
                'validation' => 'loose'
            ],
            'site.menu.url' => [
                'type' => 'text',
                'label' => 'URL',
                'name' => 'site.menu.url',
                'validation' => 'loose'
            ],
            'site.hidehomemenulink' => [
                'type' => 'toggle',
                'label' => 'Include Homepage Link in Menubar',
                'default' => 0,
                'highlight' => 0,
                'options' => [
                    0 => 'Yes',
                    1 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.hidehomemenulink',
                'validation' => 'loose'
            ],
            'site.sectionfive' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionfive',
                'validation' => 'loose'
            ],
            'site.hidesidebaronblogpages' => [
                'type' => '_parent',
                'name' => 'site.hidesidebaronblogpages',
                'form_field' => false
            ],
            'site.hidesidebaronblogpages.enabled' => [
                'type' => 'toggle',
                'label' => 'Display Sidebar on Blog Pages',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    0 => 'Yes',
                    1 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.hidesidebaronblogpages.enabled',
                'validation' => 'loose'
            ],
            'site.icon' => [
                'type' => '_parent',
                'name' => 'site.icon',
                'form_field' => false
            ],
            'site.icon.post' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Default Blog Post Font Awesome Icon',
                'default' => 'calendar-o',
                'description' => 'Short name, e.g. \'calendar-o\'.',
                'validate' => [
                    'type' => 'text'
                ],
                'name' => 'site.icon.post',
                'validation' => 'loose'
            ],
            'site.sectionsix' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionsix',
                'validation' => 'loose'
            ],
            'site.cc_license' => [
                'type' => '_parent',
                'name' => 'site.cc_license',
                'form_field' => false
            ],
            'site.cc_license.enabled' => [
                'type' => 'toggle',
                'label' => 'Display CC License',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'Yes',
                    0 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.cc_license.enabled',
                'validation' => 'loose'
            ],
            'site.cc_license.type' => [
                'type' => 'select',
                'label' => 'CC License Type',
                'default' => 'ccby',
                'size' => 'long',
                'description' => 'Looking for more info about Creative Commons (CC) Licenses?<br> Visit the <a href="https://creativecommons.org/" target="_blank">creativecommons.org</a> site.',
                'options' => [
                    'ccby' => 'CC Attribution',
                    'ccbysa' => 'CC Attribution Share Alike',
                    'ccbynd' => 'CC Attribution No Derivatives',
                    'ccbync' => 'CC Attribution Non-Commercial',
                    'ccbyncsa' => 'CC Attribution Non-Commercial Share Alike',
                    'ccbyncnd' => 'CC Attribution Non-Commercial No Derivatives'
                ],
                'name' => 'site.cc_license.type',
                'validation' => 'loose'
            ],
            'site.cc_license.icon' => [
                'type' => 'toggle',
                'label' => 'Display Only CC License Icon',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    0 => 'Yes',
                    1 => 'No'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.cc_license.icon',
                'validation' => 'loose'
            ],
            'site.cc_license.text' => [
                'type' => 'text',
                'size' => 'long',
                'description' => 'For example, \'Except for embedded content or elsewhere noted.\'',
                'label' => 'Additional CC License Text',
                'validate' => [
                    'type' => 'text'
                ],
                'name' => 'site.cc_license.text',
                'validation' => 'loose'
            ],
            'site.sectionseven' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.sectionseven',
                'validation' => 'loose'
            ],
            'site.summary' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.summary',
                'validation' => 'loose'
            ],
            'site.summary.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'site.summary.enabled',
                'validation' => 'loose'
            ],
            'site.summary.size' => [
                'type' => 'text',
                'size' => 'x-small',
                'append' => 'PLUGIN_ADMIN.CHARACTERS',
                'label' => 'PLUGIN_ADMIN.SUMMARY_SIZE',
                'validate' => [
                    'type' => 'int',
                    'min' => 0,
                    'max' => 65536
                ],
                'name' => 'site.summary.size',
                'validation' => 'loose'
            ],
            'site.summary.format' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.FORMAT',
                'classes' => 'fancy',
                'highlight' => 'short',
                'options' => [
                    'short' => 'PLUGIN_ADMIN.SHORT',
                    'long' => 'PLUGIN_ADMIN.LONG'
                ],
                'name' => 'site.summary.format',
                'validation' => 'loose'
            ],
            'site.summary.delimiter' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_ADMIN.DELIMITER',
                'name' => 'site.summary.delimiter',
                'validation' => 'loose'
            ],
            'site.metadata' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.metadata',
                'validation' => 'loose'
            ],
            'site.redirects' => [
                'type' => 'array',
                'label' => 'PLUGIN_ADMIN.CUSTOM_REDIRECTS',
                'name' => 'site.redirects',
                'validation' => 'loose'
            ],
            'site.routes' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'site.routes',
                'validation' => 'loose'
            ],
            'media' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'streams' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose',
                    'hidden' => true
                ]
            ],
            'streams.schemes' => [
                'type' => '_parent',
                'name' => 'streams.schemes',
                'form_field' => false
            ],
            'streams.schemes.xxx' => [
                'type' => 'array',
                'name' => 'streams.schemes.xxx',
                'validation' => 'loose'
            ],
            'system' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'system.home' => [
                'type' => '_parent',
                'name' => 'system.home',
                'form_field' => false
            ],
            'system.home.alias' => [
                'type' => 'pages',
                'size' => 'large',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.HOME_PAGE',
                'show_all' => false,
                'show_modular' => false,
                'show_root' => false,
                'show_slug' => true,
                'name' => 'system.home.alias',
                'validation' => 'loose'
            ],
            'system.home.hide_in_urls' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.HIDE_HOME_IN_URLS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.home.hide_in_urls',
                'validation' => 'loose'
            ],
            'system.pages' => [
                'type' => '_parent',
                'name' => 'system.pages',
                'form_field' => false
            ],
            'system.pages.theme' => [
                'type' => 'themeselect',
                'classes' => 'fancy',
                'selectize' => true,
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.DEFAULT_THEME',
                'name' => 'system.pages.theme',
                'validation' => 'loose'
            ],
            'system.pages.process' => [
                'type' => 'checkboxes',
                'label' => 'PLUGIN_ADMIN.PROCESS',
                'default' => [
                    0 => [
                        'markdown' => true
                    ],
                    1 => [
                        'twig' => true
                    ]
                ],
                'options' => [
                    'markdown' => 'Markdown',
                    'twig' => 'Twig'
                ],
                'use' => 'keys',
                'name' => 'system.pages.process',
                'validation' => 'loose'
            ],
            'system.timezone' => [
                'type' => 'select',
                'label' => 'PLUGIN_ADMIN.TIMEZONE',
                'size' => 'medium',
                'classes' => 'fancy',
                'data-options@' => '\\Grav\\Common\\Utils::timezones',
                'default' => '',
                'options' => [
                    '' => 'Default (Server Timezone)'
                ],
                'name' => 'system.timezone',
                'validation' => 'loose'
            ],
            'system.pages.dateformat' => [
                'type' => '_parent',
                'name' => 'system.pages.dateformat',
                'form_field' => false
            ],
            'system.pages.dateformat.default' => [
                'type' => 'select',
                'size' => 'medium',
                'selectize' => [
                    'create' => true
                ],
                'label' => 'PLUGIN_ADMIN.DEFAULT_DATE_FORMAT',
                'data-options@' => '\\Grav\\Common\\Utils::dateFormats',
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'system.pages.dateformat.default',
                'validation' => 'loose'
            ],
            'system.pages.dateformat.short' => [
                'type' => 'dateformat',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.SHORT_DATE_FORMAT',
                'default' => 'jS M Y',
                'options' => [
                    'F jS \\a\\t g:ia' => 'Date1',
                    'l jS \\of F g:i A' => 'Date2',
                    'D, d M Y G:i:s' => 'Date3',
                    'd-m-y G:i' => 'Date4',
                    'jS M Y' => 'Date5'
                ],
                'name' => 'system.pages.dateformat.short',
                'validation' => 'loose'
            ],
            'system.pages.dateformat.long' => [
                'type' => 'dateformat',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.LONG_DATE_FORMAT',
                'options' => [
                    'F jS \\a\\t g:ia' => 'Date1',
                    'l jS \\of F g:i A' => 'Date2',
                    'D, d M Y G:i:s' => 'Date3',
                    'd-m-y G:i' => 'Date4',
                    'jS M Y' => 'Date5'
                ],
                'name' => 'system.pages.dateformat.long',
                'validation' => 'loose'
            ],
            'system.pages.order' => [
                'type' => '_parent',
                'name' => 'system.pages.order',
                'form_field' => false
            ],
            'system.pages.order.by' => [
                'type' => 'select',
                'size' => 'large',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.DEFAULT_ORDERING',
                'options' => [
                    'default' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_DEFAULT',
                    'folder' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_FOLDER',
                    'title' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_TITLE',
                    'date' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_DATE'
                ],
                'name' => 'system.pages.order.by',
                'validation' => 'loose'
            ],
            'system.pages.order.dir' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.DEFAULT_ORDER_DIRECTION',
                'highlight' => 'asc',
                'default' => 'desc',
                'options' => [
                    'asc' => 'PLUGIN_ADMIN.ASCENDING',
                    'desc' => 'PLUGIN_ADMIN.DESCENDING'
                ],
                'name' => 'system.pages.order.dir',
                'validation' => 'loose'
            ],
            'system.pages.list' => [
                'type' => '_parent',
                'name' => 'system.pages.list',
                'form_field' => false
            ],
            'system.pages.list.count' => [
                'type' => 'text',
                'size' => 'x-small',
                'append' => 'PLUGIN_ADMIN.PAGES',
                'label' => 'PLUGIN_ADMIN.DEFAULT_PAGE_COUNT',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'system.pages.list.count',
                'validation' => 'loose'
            ],
            'system.pages.publish_dates' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.DATE_BASED_PUBLISHING',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.publish_dates',
                'validation' => 'loose'
            ],
            'system.pages.events' => [
                'type' => 'checkboxes',
                'label' => 'PLUGIN_ADMIN.EVENTS',
                'default' => [
                    0 => [
                        'page' => true
                    ],
                    1 => [
                        'twig' => true
                    ]
                ],
                'options' => [
                    'page' => 'Page Events',
                    'twig' => 'Twig Events'
                ],
                'use' => 'keys',
                'name' => 'system.pages.events',
                'validation' => 'loose'
            ],
            'system.pages.append_url_extension' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_ADMIN.APPEND_URL_EXT',
                'name' => 'system.pages.append_url_extension',
                'validation' => 'loose'
            ],
            'system.pages.redirect_default_route' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.REDIRECT_DEFAULT_ROUTE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.redirect_default_route',
                'validation' => 'loose'
            ],
            'system.pages.redirect_default_code' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.REDIRECT_DEFAULT_CODE',
                'options' => [
                    301 => '301 - Permanent',
                    302 => '302 - Found',
                    303 => '303 - Other',
                    304 => '304 - Not Modified'
                ],
                'name' => 'system.pages.redirect_default_code',
                'validation' => 'loose'
            ],
            'system.pages.redirect_trailing_slash' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.REDIRECT_TRAILING_SLASH',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.redirect_trailing_slash',
                'validation' => 'loose'
            ],
            'system.pages.ignore_hidden' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.IGNORE_HIDDEN',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.ignore_hidden',
                'validation' => 'loose'
            ],
            'system.pages.ignore_files' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.IGNORE_FILES',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.pages.ignore_files',
                'validation' => 'loose'
            ],
            'system.pages.ignore_folders' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.IGNORE_FOLDERS',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.pages.ignore_folders',
                'validation' => 'loose'
            ],
            'system.pages.url_taxonomy_filters' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ALLOW_URL_TAXONOMY_FILTERS',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.url_taxonomy_filters',
                'validation' => 'loose'
            ],
            'system.pages.twig_first' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TWIG_FIRST',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.twig_first',
                'validation' => 'loose'
            ],
            'system.pages.never_cache_twig' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.NEVER_CACHE_TWIG',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.never_cache_twig',
                'validation' => 'loose'
            ],
            'system.pages.frontmatter' => [
                'type' => '_parent',
                'name' => 'system.pages.frontmatter',
                'form_field' => false
            ],
            'system.pages.frontmatter.process_twig' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.FRONTMATTER_PROCESS_TWIG',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.frontmatter.process_twig',
                'validation' => 'loose'
            ],
            'system.pages.frontmatter.ignore_fields' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.FRONTMATTER_IGNORE_FIELDS',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.pages.frontmatter.ignore_fields',
                'validation' => 'loose'
            ],
            'system.content' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.content',
                'validation' => 'loose'
            ],
            'system.languages' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.languages',
                'validation' => 'loose'
            ],
            'system.languages.supported' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.SUPPORTED',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.languages.supported',
                'validation' => 'loose'
            ],
            'system.languages.include_default_lang' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.INCLUDE_DEFAULT_LANG',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.include_default_lang',
                'validation' => 'loose'
            ],
            'system.languages.translations' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TRANSLATIONS_ENABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.translations',
                'validation' => 'loose'
            ],
            'system.languages.translations_fallback' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TRANSLATIONS_FALLBACK',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.translations_fallback',
                'validation' => 'loose'
            ],
            'system.languages.session_store_active' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ACTIVE_LANGUAGE_IN_SESSION',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.session_store_active',
                'validation' => 'loose'
            ],
            'system.languages.http_accept_language' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.HTTP_ACCEPT_LANGUAGE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.http_accept_language',
                'validation' => 'loose'
            ],
            'system.languages.override_locale' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.OVERRIDE_LOCALE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.languages.override_locale',
                'validation' => 'loose'
            ],
            'system.pages.expires' => [
                'type' => 'text',
                'size' => 'small',
                'append' => 'NICETIME.SECOND_PLURAL',
                'label' => 'PLUGIN_ADMIN.EXPIRES',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'system.pages.expires',
                'validation' => 'loose'
            ],
            'system.pages.cache_control' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.CACHE_CONTROL',
                'name' => 'system.pages.cache_control',
                'validation' => 'loose'
            ],
            'system.pages.last_modified' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.LAST_MODIFIED',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.last_modified',
                'validation' => 'loose'
            ],
            'system.pages.etag' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ETAG',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.etag',
                'validation' => 'loose'
            ],
            'system.pages.vary_accept_encoding' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.VARY_ACCEPT_ENCODING',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.vary_accept_encoding',
                'validation' => 'loose'
            ],
            'system.http_headers' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.http_headers',
                'validation' => 'loose'
            ],
            'system.pages.markdown' => [
                'type' => '_parent',
                'name' => 'system.pages.markdown',
                'form_field' => false
            ],
            'system.pages.markdown.extra' => [
                'type' => 'toggle',
                'label' => 'Markdown extra',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.markdown.extra',
                'validation' => 'loose'
            ],
            'system.pages.markdown.auto_line_breaks' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.AUTO_LINE_BREAKS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.markdown.auto_line_breaks',
                'validation' => 'loose'
            ],
            'system.pages.markdown.auto_url_links' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.AUTO_URL_LINKS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.markdown.auto_url_links',
                'validation' => 'loose'
            ],
            'system.pages.markdown.escape_markup' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ESCAPE_MARKUP',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.pages.markdown.escape_markup',
                'validation' => 'loose'
            ],
            'system.markdown' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.markdown',
                'validation' => 'loose'
            ],
            'system.cache' => [
                'type' => '_parent',
                'name' => 'system.cache',
                'form_field' => false
            ],
            'system.cache.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CACHING',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.cache.enabled',
                'validation' => 'loose'
            ],
            'system.cache.check' => [
                'type' => '_parent',
                'name' => 'system.cache.check',
                'form_field' => false
            ],
            'system.cache.check.method' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.CACHE_CHECK_METHOD',
                'options' => [
                    'file' => 'Markdown + Yaml file timestamps',
                    'folder' => 'Folder timestamps',
                    'hash' => 'All files timestamps',
                    'none' => 'No timestamp checking'
                ],
                'name' => 'system.cache.check.method',
                'validation' => 'loose'
            ],
            'system.cache.driver' => [
                'type' => 'select',
                'size' => 'small',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.CACHE_DRIVER',
                'options' => [
                    'auto' => 'Auto detect',
                    'file' => 'File',
                    'apc' => 'APC',
                    'apcu' => 'APCu',
                    'xcache' => 'Xcache',
                    'memcache' => 'Memcache',
                    'memcached' => 'Memcached',
                    'wincache' => 'WinCache',
                    'redis' => 'Redis'
                ],
                'name' => 'system.cache.driver',
                'validation' => 'loose'
            ],
            'system.cache.prefix' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_ADMIN.CACHE_PREFIX',
                'name' => 'system.cache.prefix',
                'validation' => 'loose'
            ],
            'system.cache.clear_images_by_default' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CLEAR_IMAGES_BY_DEFAULT',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.cache.clear_images_by_default',
                'validation' => 'loose'
            ],
            'system.cache.cli_compatibility' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CLI_COMPATIBILITY',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.cache.cli_compatibility',
                'validation' => 'loose'
            ],
            'system.cache.lifetime' => [
                'type' => 'text',
                'size' => 'small',
                'append' => 'NICETIME.SECOND_PLURAL',
                'label' => 'PLUGIN_ADMIN.LIFETIME',
                'validate' => [
                    'type' => 'number'
                ],
                'name' => 'system.cache.lifetime',
                'validation' => 'loose'
            ],
            'system.cache.gzip' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.GZIP_COMPRESSION',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.cache.gzip',
                'validation' => 'loose'
            ],
            'system.cache.allow_webserver_gzip' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ALLOW_WEBSERVER_GZIP',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.cache.allow_webserver_gzip',
                'validation' => 'loose'
            ],
            'system.cache.memcache' => [
                'type' => '_parent',
                'name' => 'system.cache.memcache',
                'form_field' => false
            ],
            'system.cache.memcache.server' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.MEMCACHE_SERVER',
                'name' => 'system.cache.memcache.server',
                'validation' => 'loose'
            ],
            'system.cache.memcache.port' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.MEMCACHE_PORT',
                'name' => 'system.cache.memcache.port',
                'validation' => 'loose'
            ],
            'system.cache.memcached' => [
                'type' => '_parent',
                'name' => 'system.cache.memcached',
                'form_field' => false
            ],
            'system.cache.memcached.server' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.MEMCACHED_SERVER',
                'name' => 'system.cache.memcached.server',
                'validation' => 'loose'
            ],
            'system.cache.memcached.port' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.MEMCACHED_PORT',
                'name' => 'system.cache.memcached.port',
                'validation' => 'loose'
            ],
            'system.cache.redis' => [
                'type' => '_parent',
                'name' => 'system.cache.redis',
                'form_field' => false
            ],
            'system.cache.redis.socket' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.REDIS_SOCKET',
                'name' => 'system.cache.redis.socket',
                'validation' => 'loose'
            ],
            'system.cache.redis.server' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.REDIS_SERVER',
                'name' => 'system.cache.redis.server',
                'validation' => 'loose'
            ],
            'system.cache.redis.port' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.REDIS_PORT',
                'name' => 'system.cache.redis.port',
                'validation' => 'loose'
            ],
            'system.cache.redis.password' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.REDIS_PASSWORD',
                'name' => 'system.cache.redis.password',
                'validation' => 'loose'
            ],
            'system.caching' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.caching',
                'validation' => 'loose'
            ],
            'system.twig' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.twig',
                'validation' => 'loose'
            ],
            'system.twig.cache' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TWIG_CACHING',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.twig.cache',
                'validation' => 'loose'
            ],
            'system.twig.debug' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TWIG_DEBUG',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.twig.debug',
                'validation' => 'loose'
            ],
            'system.twig.auto_reload' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.DETECT_CHANGES',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.twig.auto_reload',
                'validation' => 'loose'
            ],
            'system.twig.autoescape' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.AUTOESCAPE_VARIABLES',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.twig.autoescape',
                'validation' => 'loose'
            ],
            'system.twig.umask_fix' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.TWIG_UMASK_FIX',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.twig.umask_fix',
                'validation' => 'loose'
            ],
            'system.assets' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.assets',
                'validation' => 'loose'
            ],
            'system.assets.css_pipeline' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_PIPELINE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_pipeline',
                'validation' => 'loose'
            ],
            'system.assets.css_pipeline_include_externals' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_PIPELINE_INCLUDE_EXTERNALS',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_pipeline_include_externals',
                'validation' => 'loose'
            ],
            'system.assets.css_pipeline_before_excludes' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_PIPELINE_BEFORE_EXCLUDES',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_pipeline_before_excludes',
                'validation' => 'loose'
            ],
            'system.assets.css_minify' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_MINIFY',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_minify',
                'validation' => 'loose'
            ],
            'system.assets.css_minify_windows' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_MINIFY_WINDOWS_OVERRIDE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_minify_windows',
                'validation' => 'loose'
            ],
            'system.assets.css_rewrite' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CSS_REWRITE',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.css_rewrite',
                'validation' => 'loose'
            ],
            'system.assets.js_pipeline' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.JAVASCRIPT_PIPELINE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.js_pipeline',
                'validation' => 'loose'
            ],
            'system.assets.js_pipeline_include_externals' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.JAVASCRIPT_PIPELINE_INCLUDE_EXTERNALS',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.js_pipeline_include_externals',
                'validation' => 'loose'
            ],
            'system.assets.js_pipeline_before_excludes' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.JAVASCRIPT_PIPELINE_BEFORE_EXCLUDES',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.js_pipeline_before_excludes',
                'validation' => 'loose'
            ],
            'system.assets.js_minify' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.JAVASCRIPT_MINIFY',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.js_minify',
                'validation' => 'loose'
            ],
            'system.assets.enable_asset_timestamp' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLED_TIMESTAMPS_ON_ASSETS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.assets.enable_asset_timestamp',
                'validation' => 'loose'
            ],
            'system.assets.collections' => [
                'type' => 'multilevel',
                'label' => 'PLUGIN_ADMIN.COLLECTIONS',
                'validate' => [
                    'type' => 'array'
                ],
                'name' => 'system.assets.collections',
                'validation' => 'loose'
            ],
            'system.errors' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.errors',
                'validation' => 'loose'
            ],
            'system.errors.display' => [
                'type' => 'select',
                'label' => 'PLUGIN_ADMIN.DISPLAY_ERRORS',
                'size' => 'medium',
                'highlight' => 1,
                'options' => [
                    -1 => 'PLUGIN_ADMIN.ERROR_SYSTEM',
                    0 => 'PLUGIN_ADMIN.ERROR_SIMPLE',
                    1 => 'PLUGIN_ADMIN.ERROR_FULL_BACKTRACE'
                ],
                'name' => 'system.errors.display',
                'validation' => 'loose'
            ],
            'system.errors.log' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.LOG_ERRORS',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.errors.log',
                'validation' => 'loose'
            ],
            'system.debugger' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.debugger',
                'validation' => 'loose'
            ],
            'system.debugger.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.DEBUGGER',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.debugger.enabled',
                'validation' => 'loose'
            ],
            'system.debugger.shutdown' => [
                'type' => '_parent',
                'name' => 'system.debugger.shutdown',
                'form_field' => false
            ],
            'system.debugger.shutdown.close_connection' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.SHUTDOWN_CLOSE_CONNECTION',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.debugger.shutdown.close_connection',
                'validation' => 'loose'
            ],
            'system.images' => [
                'type' => '_parent',
                'name' => 'system.images',
                'form_field' => false
            ],
            'system.images.default_image_quality' => [
                'type' => 'range',
                'append' => '%',
                'label' => 'PLUGIN_ADMIN.DEFAULT_IMAGE_QUALITY',
                'validate' => [
                    'min' => 1,
                    'max' => 100
                ],
                'name' => 'system.images.default_image_quality',
                'validation' => 'loose'
            ],
            'system.images.cache_all' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CACHE_ALL',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.images.cache_all',
                'validation' => 'loose'
            ],
            'system.images.cache_perms' => [
                'type' => 'select',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.CACHE_PERMS',
                'highlight' => '0755',
                'options' => [
                    '0755' => '0755',
                    '0775' => '0775'
                ],
                'name' => 'system.images.cache_perms',
                'validation' => 'loose'
            ],
            'system.images.debug' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.IMAGES_DEBUG',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.images.debug',
                'validation' => 'loose'
            ],
            'system.images.auto_fix_orientation' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.IMAGES_AUTO_FIX_ORIENTATION',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.images.auto_fix_orientation',
                'validation' => 'loose'
            ],
            'system.media' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.media',
                'validation' => 'loose'
            ],
            'system.media.enable_media_timestamp' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLE_MEDIA_TIMESTAMP',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.media.enable_media_timestamp',
                'validation' => 'loose'
            ],
            'system.media.auto_metadata_exif' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLE_AUTO_METADATA',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.media.auto_metadata_exif',
                'validation' => 'loose'
            ],
            'system.media.allowed_fallback_types' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.FALLBACK_TYPES',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.media.allowed_fallback_types',
                'validation' => 'loose'
            ],
            'system.media.unsupported_inline_types' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.INLINE_TYPES',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'system.media.unsupported_inline_types',
                'validation' => 'loose'
            ],
            'system.session' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.session',
                'validation' => 'loose'
            ],
            'system.session.enabled' => [
                'type' => 'hidden',
                'label' => 'PLUGIN_ADMIN.ENABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'default' => true,
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.session.enabled',
                'validation' => 'loose'
            ],
            'system.session.timeout' => [
                'type' => 'text',
                'size' => 'small',
                'append' => 'NICETIME.SECOND_PLURAL',
                'label' => 'PLUGIN_ADMIN.TIMEOUT',
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'system.session.timeout',
                'validation' => 'loose'
            ],
            'system.session.name' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.NAME',
                'name' => 'system.session.name',
                'validation' => 'loose'
            ],
            'system.session.secure' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.SESSION_SECURE',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'default' => false,
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.session.secure',
                'validation' => 'loose'
            ],
            'system.session.httponly' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.SESSION_HTTPONLY',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'default' => true,
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.session.httponly',
                'validation' => 'loose'
            ],
            'system.session.path' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.SESSION_PATH',
                'name' => 'system.session.path',
                'validation' => 'loose'
            ],
            'system.session.split' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.SESSION_SPLIT',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'default' => true,
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.session.split',
                'validation' => 'loose'
            ],
            'system.gpm' => [
                'type' => '_parent',
                'name' => 'system.gpm',
                'form_field' => false
            ],
            'system.gpm.releases' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.GPM_RELEASES',
                'highlight' => 'stable',
                'options' => [
                    'stable' => 'PLUGIN_ADMIN.STABLE',
                    'testing' => 'PLUGIN_ADMIN.TESTING'
                ],
                'name' => 'system.gpm.releases',
                'validation' => 'loose'
            ],
            'system.gpm.proxy_url' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.PROXY_URL',
                'name' => 'system.gpm.proxy_url',
                'validation' => 'loose'
            ],
            'system.gpm.method' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.GPM_METHOD',
                'highlight' => 'auto',
                'options' => [
                    'auto' => 'PLUGIN_ADMIN.AUTO',
                    'fopen' => 'PLUGIN_ADMIN.FOPEN',
                    'curl' => 'PLUGIN_ADMIN.CURL'
                ],
                'name' => 'system.gpm.method',
                'validation' => 'loose'
            ],
            'system.gpm.official_gpm_only' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.GPM_OFFICIAL_ONLY',
                'highlight' => 'auto',
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'default' => true,
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.gpm.official_gpm_only',
                'validation' => 'loose'
            ],
            'system.gpm.verify_peer' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.GPM_VERIFY_PEER',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.gpm.verify_peer',
                'validation' => 'loose'
            ],
            'system.reverse_proxy_setup' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.REVERSE_PROXY',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.reverse_proxy_setup',
                'validation' => 'loose'
            ],
            'system.username_regex' => [
                'type' => 'text',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.USERNAME_REGEX',
                'name' => 'system.username_regex',
                'validation' => 'loose'
            ],
            'system.pwd_regex' => [
                'type' => 'text',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.PWD_REGEX',
                'name' => 'system.pwd_regex',
                'validation' => 'loose'
            ],
            'system.wrapped_site' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.WRAPPED_SITE',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.wrapped_site',
                'validation' => 'loose'
            ],
            'system.absolute_urls' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ABSOLUTE_URLS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.absolute_urls',
                'validation' => 'loose'
            ],
            'system.case_insensitive_urls' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CASE_INSENSITIVE_URLS',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.case_insensitive_urls',
                'validation' => 'loose'
            ],
            'system.param_sep' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.PARAMETER_SEPARATOR',
                'classes' => 'fancy',
                'default' => '',
                'options' => [
                    ':' => ': (default)',
                    ';' => '; (for Apache running on Windows)'
                ],
                'name' => 'system.param_sep',
                'validation' => 'loose'
            ],
            'system.force_ssl' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.FORCE_SSL',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'system.force_ssl',
                'validation' => 'loose'
            ],
            'system.custom_base_url' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_ADMIN.CUSTOM_BASE_URL',
                'name' => 'system.custom_base_url',
                'validation' => 'loose'
            ],
            'system.advanced' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'system.advanced',
                'validation' => 'loose'
            ],
            'plugins.admin' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'plugins' => [
                'type' => '_parent',
                'name' => 'plugins',
                'form_field' => false
            ],
            'plugins.admin.Basics' => [
                'type' => 'section',
                'underline' => false,
                'name' => 'plugins.admin.Basics',
                'validation' => 'loose'
            ],
            'plugins.admin.enabled' => [
                'type' => 'hidden',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.enabled',
                'validation' => 'loose'
            ],
            'plugins.admin.cache_enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ADMIN_CACHING',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.cache_enabled',
                'validation' => 'loose'
            ],
            'plugins.admin.twofa_enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.2FA_TITLE',
                'default' => 1,
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.twofa_enabled',
                'validation' => 'loose'
            ],
            'plugins.admin.route' => [
                'type' => 'text',
                'label' => 'Administrator path',
                'size' => 'medium',
                'name' => 'plugins.admin.route',
                'validation' => 'loose'
            ],
            'plugins.admin.logo_text' => [
                'type' => 'text',
                'label' => 'Logo text',
                'size' => 'medium',
                'name' => 'plugins.admin.logo_text',
                'validation' => 'loose'
            ],
            'plugins.admin.content_padding' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.CONTENT_PADDING',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.content_padding',
                'validation' => 'loose'
            ],
            'plugins.admin.body_classes' => [
                'type' => 'text',
                'label' => 'Body classes',
                'size' => 'medium',
                'name' => 'plugins.admin.body_classes',
                'validation' => 'loose'
            ],
            'plugins.admin.sidebar' => [
                'type' => '_parent',
                'name' => 'plugins.admin.sidebar',
                'form_field' => false
            ],
            'plugins.admin.sidebar.activate' => [
                'type' => 'select',
                'label' => 'Sidebar Activation',
                'size' => 'small',
                'default' => 'tab',
                'options' => [
                    'tab' => 'Tab',
                    'hover' => 'Hover'
                ],
                'name' => 'plugins.admin.sidebar.activate',
                'validation' => 'loose'
            ],
            'plugins.admin.sidebar.hover_delay' => [
                'type' => 'text',
                'size' => 'x-small',
                'append' => 'millseconds',
                'label' => 'Hover delay',
                'default' => 500,
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.admin.sidebar.hover_delay',
                'validation' => 'loose'
            ],
            'plugins.admin.sidebar.size' => [
                'type' => 'select',
                'label' => 'Sidebar Size',
                'size' => 'medium',
                'default' => 'auto',
                'options' => [
                    'auto' => 'Automatic width',
                    'small' => 'Small width'
                ],
                'name' => 'plugins.admin.sidebar.size',
                'validation' => 'loose'
            ],
            'plugins.admin.theme' => [
                'type' => 'hidden',
                'label' => 'Theme',
                'default' => 'grav',
                'name' => 'plugins.admin.theme',
                'validation' => 'loose'
            ],
            'plugins.admin.edit_mode' => [
                'type' => 'select',
                'label' => 'Edit mode',
                'size' => 'small',
                'default' => 'normal',
                'options' => [
                    'normal' => 'Normal',
                    'expert' => 'Expert'
                ],
                'name' => 'plugins.admin.edit_mode',
                'validation' => 'loose'
            ],
            'plugins.admin.frontend_pages_target' => [
                'type' => 'select',
                'label' => 'Open frontend pages in',
                'size' => 'medium',
                'default' => '_blank',
                'options' => [
                    '_blank' => 'New tab',
                    'frontend_tab' => 'Separate tab (always the same)',
                    '_self' => 'Current tab'
                ],
                'name' => 'plugins.admin.frontend_pages_target',
                'validation' => 'loose'
            ],
            'plugins.admin.pages' => [
                'type' => '_parent',
                'name' => 'plugins.admin.pages',
                'form_field' => false
            ],
            'plugins.admin.pages.show_parents' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Parent dropdown',
                'highlight' => 1,
                'options' => [
                    'both' => 'Show slug and folder',
                    'folder' => 'Show folder',
                    'fullpath' => 'Show fullpath'
                ],
                'name' => 'plugins.admin.pages.show_parents',
                'validation' => 'loose'
            ],
            'plugins.admin.google_fonts' => [
                'type' => 'toggle',
                'label' => 'Use Google Fonts',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.google_fonts',
                'validation' => 'loose'
            ],
            'plugins.admin.show_beta_msg' => [
                'type' => 'hidden',
                'name' => 'plugins.admin.show_beta_msg',
                'validation' => 'loose'
            ],
            'plugins.admin.show_github_msg' => [
                'type' => 'toggle',
                'label' => 'Show GitHub Link',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.show_github_msg',
                'validation' => 'loose'
            ],
            'plugins.admin.pages_list_display_field' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'Pages List Display Field',
                'name' => 'plugins.admin.pages_list_display_field',
                'validation' => 'loose'
            ],
            'plugins.admin.enable_auto_updates_check' => [
                'type' => 'toggle',
                'label' => 'Automatically check for updates',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.enable_auto_updates_check',
                'validation' => 'loose'
            ],
            'plugins.admin.session' => [
                'type' => '_parent',
                'name' => 'plugins.admin.session',
                'form_field' => false
            ],
            'plugins.admin.session.timeout' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'Session Timeout',
                'append' => 'secs',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.admin.session.timeout',
                'validation' => 'loose'
            ],
            'plugins.admin.warnings' => [
                'type' => '_parent',
                'name' => 'plugins.admin.warnings',
                'form_field' => false
            ],
            'plugins.admin.warnings.delete_page' => [
                'type' => 'toggle',
                'label' => 'Warn on page delete',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.warnings.delete_page',
                'validation' => 'loose'
            ],
            'plugins.admin.hide_page_types' => [
                'type' => 'array',
                'label' => 'Hide page types in Admin',
                'value_only' => true,
                'name' => 'plugins.admin.hide_page_types',
                'validation' => 'loose'
            ],
            'plugins.admin.hide_modular_page_types' => [
                'type' => 'array',
                'label' => 'Hide modular page types in Admin',
                'value_only' => true,
                'name' => 'plugins.admin.hide_modular_page_types',
                'validation' => 'loose'
            ],
            'plugins.admin.Dashboard' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.admin.Dashboard',
                'validation' => 'loose'
            ],
            'plugins.admin.widgets' => [
                'type' => '_parent',
                'name' => 'plugins.admin.widgets',
                'form_field' => false
            ],
            'plugins.admin.widgets.dashboard-maintenance' => [
                'type' => 'toggle',
                'label' => 'Maintenance Widget',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.widgets.dashboard-maintenance',
                'validation' => 'loose'
            ],
            'plugins.admin.widgets.dashboard-statistics' => [
                'type' => 'toggle',
                'label' => 'Statistics Widget',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.widgets.dashboard-statistics',
                'validation' => 'loose'
            ],
            'plugins.admin.widgets.dashboard-notifications' => [
                'type' => 'toggle',
                'label' => 'Notifications Feed Widget',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.widgets.dashboard-notifications',
                'validation' => 'loose'
            ],
            'plugins.admin.widgets.dashboard-feed' => [
                'type' => 'toggle',
                'label' => 'News Feed Widget',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.widgets.dashboard-feed',
                'validation' => 'loose'
            ],
            'plugins.admin.widgets.dashboard-pages' => [
                'type' => 'toggle',
                'label' => 'Latest Pages Widget',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.widgets.dashboard-pages',
                'validation' => 'loose'
            ],
            'plugins.admin.Notifications' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.admin.Notifications',
                'validation' => 'loose'
            ],
            'plugins.admin.notifications' => [
                'type' => '_parent',
                'name' => 'plugins.admin.notifications',
                'form_field' => false
            ],
            'plugins.admin.notifications.feed' => [
                'type' => 'toggle',
                'label' => 'Feed Notifications',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.notifications.feed',
                'validation' => 'loose'
            ],
            'plugins.admin.notifications.dashboard' => [
                'type' => 'toggle',
                'label' => 'Dashboard Notifications',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.notifications.dashboard',
                'validation' => 'loose'
            ],
            'plugins.admin.notifications.plugins' => [
                'type' => 'toggle',
                'label' => 'Plugins Notifications',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.notifications.plugins',
                'validation' => 'loose'
            ],
            'plugins.admin.notifications.themes' => [
                'type' => 'toggle',
                'label' => 'Themes Notifications',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.notifications.themes',
                'validation' => 'loose'
            ],
            'plugins.admin.Popularity' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.admin.Popularity',
                'validation' => 'loose'
            ],
            'plugins.admin.popularity' => [
                'type' => '_parent',
                'name' => 'plugins.admin.popularity',
                'form_field' => false
            ],
            'plugins.admin.popularity.enabled' => [
                'type' => 'toggle',
                'label' => 'Visitor tracking',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.admin.popularity.enabled',
                'validation' => 'loose'
            ],
            'plugins.admin.dashboard' => [
                'type' => '_parent',
                'name' => 'plugins.admin.dashboard',
                'form_field' => false
            ],
            'plugins.admin.dashboard.days_of_stats' => [
                'type' => 'text',
                'label' => 'Days of stats',
                'append' => 'days',
                'size' => 'x-small',
                'default' => 7,
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.admin.dashboard.days_of_stats',
                'validation' => 'loose'
            ],
            'plugins.admin.popularity.ignore' => [
                'type' => 'array',
                'label' => 'Ignore',
                'size' => 'large',
                'default' => [
                    0 => '/test*',
                    1 => '/modular'
                ],
                'value_only' => true,
                'name' => 'plugins.admin.popularity.ignore',
                'validation' => 'loose'
            ],
            'plugins.admin.popularity.history' => [
                'type' => '_parent',
                'name' => 'plugins.admin.popularity.history',
                'form_field' => false
            ],
            'plugins.admin.popularity.history.daily' => [
                'type' => 'hidden',
                'label' => 'Daily history',
                'default' => 30,
                'name' => 'plugins.admin.popularity.history.daily',
                'validation' => 'loose'
            ],
            'plugins.admin.popularity.history.monthly' => [
                'type' => 'hidden',
                'label' => 'Monthly history',
                'default' => 12,
                'name' => 'plugins.admin.popularity.history.monthly',
                'validation' => 'loose'
            ],
            'plugins.admin.popularity.history.visitors' => [
                'type' => 'hidden',
                'label' => 'Visitors history',
                'default' => 20,
                'name' => 'plugins.admin.popularity.history.visitors',
                'validation' => 'loose'
            ],
            'plugins.archives' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.archives.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.archives.enabled',
                'validation' => 'strict'
            ],
            'plugins.archives.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.archives.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.archives.date_display_format' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Date Format',
                'default' => 'jS M Y',
                'options' => [
                    'F jS Y' => 'January 1st 2014',
                    'l jS of F' => 'Monday 1st of January',
                    'D, m M Y' => 'Mon, 01 Jan 2014',
                    'd-m-y' => '01-01-14',
                    'jS M Y' => '10th Feb 2014',
                    'F Y' => 'Jan 2015'
                ],
                'name' => 'plugins.archives.date_display_format',
                'validation' => 'strict'
            ],
            'plugins.archives.show_count' => [
                'type' => 'toggle',
                'label' => 'Show Count',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.archives.show_count',
                'validation' => 'strict'
            ],
            'plugins.archives.limit' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'Count Limit',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.archives.limit',
                'validation' => 'strict'
            ],
            'plugins.archives.order' => [
                'type' => '_parent',
                'name' => 'plugins.archives.order',
                'form_field' => false
            ],
            'plugins.archives.order.dir' => [
                'type' => 'toggle',
                'label' => 'Order Direction',
                'highlight' => 'asc',
                'default' => 'desc',
                'options' => [
                    'asc' => 'Ascending',
                    'desc' => 'Descending'
                ],
                'name' => 'plugins.archives.order.dir',
                'validation' => 'strict'
            ],
            'plugins.archives.order.by' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Order Type',
                'options' => [
                    'default' => 'Default - based on folder name',
                    'folder' => 'Folder - based on prefix-less folder name',
                    'title' => 'Title - based on title field in header',
                    'date' => 'Date - based on date field in header'
                ],
                'name' => 'plugins.archives.order.by',
                'validation' => 'strict'
            ],
            'plugins.archives.filters' => [
                'type' => '_parent',
                'name' => 'plugins.archives.filters',
                'form_field' => false
            ],
            'plugins.archives.filters.category' => [
                'type' => 'selectize',
                'label' => 'Category filter',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.archives.filters.category',
                'validation' => 'strict'
            ],
            'plugins.archives.filter_combinator' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Filter Combinator',
                'default' => 'and',
                'options' => [
                    'and' => 'And - Boolean &&',
                    'or' => 'Or - Boolean ||'
                ],
                'name' => 'plugins.archives.filter_combinator',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.bootstrapper.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.enabled',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.always_load' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_BOOTSTRAPPER.ALWAYS_LOAD',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.always_load',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.use_cdn' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_BOOTSTRAPPER.USE_CDN',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.use_cdn',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.mode' => [
                'type' => 'select',
                'size' => 'small',
                'label' => 'PLUGIN_BOOTSTRAPPER.MODE',
                'default' => 'production',
                'options' => [
                    'development' => 'Development',
                    'production' => 'Production'
                ],
                'name' => 'plugins.bootstrapper.mode',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.load_core_css' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_BOOTSTRAPPER.LOAD_CORE_CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.load_core_css',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.load_theme_css' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_BOOTSTRAPPER.LOAD_THEME_CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.load_theme_css',
                'validation' => 'strict'
            ],
            'plugins.bootstrapper.load_core_js' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_BOOTSTRAPPER.LOAD_CORE_JS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.bootstrapper.load_core_js',
                'validation' => 'strict'
            ],
            'plugins.email' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'plugins.email.enabled' => [
                'type' => 'hidden',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.email.enabled',
                'validation' => 'loose'
            ],
            'plugins.email.mailer' => [
                'type' => '_parent',
                'name' => 'plugins.email.mailer',
                'form_field' => false
            ],
            'plugins.email.mailer.engine' => [
                'type' => 'select',
                'label' => 'Mail Engine',
                'size' => 'medium',
                'options' => [
                    'none' => 'Disabled',
                    'smtp' => 'SMTP',
                    'sendmail' => 'Sendmail'
                ],
                'name' => 'plugins.email.mailer.engine',
                'validation' => 'loose'
            ],
            'plugins.email.content_type' => [
                'type' => 'select',
                'label' => 'Content type',
                'size' => 'medium',
                'default' => 'text/html',
                'options' => [
                    'text/plain' => 'Plain text',
                    'text/html' => 'HTML'
                ],
                'name' => 'plugins.email.content_type',
                'validation' => 'loose'
            ],
            'plugins.email.charset' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Charset',
                'name' => 'plugins.email.charset',
                'validation' => 'loose'
            ],
            'plugins.email.from' => [
                'type' => 'email',
                'size' => 'medium',
                'label' => 'Email from',
                'validate' => [
                    'required' => true,
                    'type' => 'email'
                ],
                'name' => 'plugins.email.from',
                'validation' => 'loose'
            ],
            'plugins.email.from_name' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Email from name',
                'name' => 'plugins.email.from_name',
                'validation' => 'loose'
            ],
            'plugins.email.to' => [
                'type' => 'email',
                'size' => 'medium',
                'label' => 'Email to',
                'multiple' => true,
                'validate' => [
                    'required' => true,
                    'type' => 'email'
                ],
                'name' => 'plugins.email.to',
                'validation' => 'loose'
            ],
            'plugins.email.to_name' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Email to name',
                'name' => 'plugins.email.to_name',
                'validation' => 'loose'
            ],
            'plugins.email.cc' => [
                'type' => 'email',
                'size' => 'medium',
                'label' => 'Email CC',
                'multiple' => true,
                'validate' => [
                    'type' => 'email'
                ],
                'name' => 'plugins.email.cc',
                'validation' => 'loose'
            ],
            'plugins.email.cc_name' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Email CC name',
                'name' => 'plugins.email.cc_name',
                'validation' => 'loose'
            ],
            'plugins.email.bcc' => [
                'type' => 'email',
                'size' => 'medium',
                'label' => 'Email BCC',
                'multiple' => true,
                'validate' => [
                    'type' => 'email'
                ],
                'name' => 'plugins.email.bcc',
                'validation' => 'loose'
            ],
            'plugins.email.reply_to' => [
                'type' => 'email',
                'size' => 'medium',
                'label' => 'Email reply-to',
                'multiple' => true,
                'validate' => [
                    'type' => 'email'
                ],
                'name' => 'plugins.email.reply_to',
                'validation' => 'loose'
            ],
            'plugins.email.reply_to_name' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Email reply-to name',
                'name' => 'plugins.email.reply_to_name',
                'validation' => 'loose'
            ],
            'plugins.email.body' => [
                'type' => 'textarea',
                'size' => 'medium',
                'label' => 'Email body',
                'name' => 'plugins.email.body',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.smtp' => [
                'type' => '_parent',
                'name' => 'plugins.email.mailer.smtp',
                'form_field' => false
            ],
            'plugins.email.mailer.smtp.server' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'SMTP server',
                'name' => 'plugins.email.mailer.smtp.server',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.smtp.port' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'SMTP port',
                'validate' => [
                    'type' => 'number',
                    'min' => 1,
                    'max' => 65535
                ],
                'name' => 'plugins.email.mailer.smtp.port',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.smtp.encryption' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'SMTP encryption',
                'options' => [
                    'none' => 'None',
                    'ssl' => 'SSL',
                    'tls' => 'TLS'
                ],
                'name' => 'plugins.email.mailer.smtp.encryption',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.smtp.user' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'SMTP login name',
                'name' => 'plugins.email.mailer.smtp.user',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.smtp.password' => [
                'type' => 'password',
                'size' => 'medium',
                'label' => 'SMTP password',
                'name' => 'plugins.email.mailer.smtp.password',
                'validation' => 'loose'
            ],
            'plugins.email.mailer.sendmail' => [
                'type' => '_parent',
                'name' => 'plugins.email.mailer.sendmail',
                'form_field' => false
            ],
            'plugins.email.mailer.sendmail.bin' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Path to sendmail',
                'name' => 'plugins.email.mailer.sendmail.bin',
                'validation' => 'loose'
            ],
            'plugins.email.debug' => [
                'type' => 'toggle',
                'label' => 'Debug',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.email.debug',
                'validation' => 'loose'
            ],
            'plugins.error' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.error.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.error.enabled',
                'validation' => 'strict'
            ],
            'plugins.error.routes' => [
                'type' => '_parent',
                'name' => 'plugins.error.routes',
                'form_field' => false
            ],
            'plugins.error.routes.404' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => '404 Route',
                'default' => '/error',
                'name' => 'plugins.error.routes.404',
                'validation' => 'strict'
            ],
            'plugins.external_links' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.external_links.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.enabled',
                'validation' => 'strict'
            ],
            'plugins.external_links.built_in_css' => [
                'type' => 'toggle',
                'label' => 'PLUGINS.EXTERNAL_LINKS.BUILTIN_CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.external_links.weight' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGINS.EXTERNAL_LINKS.WEIGHT',
                'default' => 0,
                'validate' => [
                    'type' => 'int',
                    'min' => -100,
                    'max' => 100
                ],
                'name' => 'plugins.external_links.weight',
                'validation' => 'strict'
            ],
            'plugins.external_links.external_links' => [
                'type' => 'tab',
                'name' => 'plugins.external_links.external_links',
                'validation' => 'strict'
            ],
            'plugins.external_links.links' => [
                'type' => 'section',
                'text' => 'PLUGINS.EXTERNAL_LINKS.LINKS.SECTION_HELP',
                'name' => 'plugins.external_links.links',
                'validation' => 'strict'
            ],
            'plugins.external_links.links.www' => [
                'type' => 'toggle',
                'label' => 'PLUGINS.EXTERNAL_LINKS.LINKS.WWW',
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.links.www',
                'validation' => 'strict'
            ],
            'plugins.external_links.links.schemes' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGINS.EXTERNAL_LINKS.LINKS.SCHEMES',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.external_links.links.schemes',
                'validation' => 'strict'
            ],
            'plugins.external_links.exclude' => [
                'type' => 'section',
                'text' => 'PLUGINS.EXTERNAL_LINKS.EXCLUDE.SECTION_HELP',
                'name' => 'plugins.external_links.exclude',
                'validation' => 'strict'
            ],
            'plugins.external_links.exclude.classes' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGINS.EXTERNAL_LINKS.EXCLUDE.CLASSES',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.external_links.exclude.classes',
                'validation' => 'strict'
            ],
            'plugins.external_links.exclude.domains' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGINS.EXTERNAL_LINKS.EXCLUDE.DOMAINS',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.external_links.exclude.domains',
                'validation' => 'strict'
            ],
            'plugins.external_links.settings' => [
                'type' => 'tab',
                'name' => 'plugins.external_links.settings',
                'validation' => 'strict'
            ],
            'plugins.external_links.process' => [
                'type' => 'toggle',
                'label' => 'PLUGINS.EXTERNAL_LINKS.PROCESS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.process',
                'validation' => 'strict'
            ],
            'plugins.external_links.title' => [
                'type' => 'toggle',
                'label' => 'PLUGINS.EXTERNAL_LINKS.TITLE',
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.title',
                'validation' => 'strict'
            ],
            'plugins.external_links.no_follow' => [
                'type' => 'toggle',
                'label' => 'PLUGINS.EXTERNAL_LINKS.NO_FOLLOW',
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.external_links.no_follow',
                'validation' => 'strict'
            ],
            'plugins.external_links.target' => [
                'type' => 'select',
                'size' => 'large',
                'label' => 'PLUGINS.EXTERNAL_LINKS.TARGET',
                'default' => '_blank',
                'selectize' => [
                    'create' => true
                ],
                'options' => [
                    '_blank' => 'PLUGINS.EXTERNAL_LINKS.TARGET_BLANK',
                    '_self' => 'PLUGINS.EXTERNAL_LINKS.TARGET_SELF',
                    '_parent' => 'PLUGINS.EXTERNAL_LINKS.TARGET_PARENT',
                    '_top' => 'PLUGINS.EXTERNAL_LINKS.TARGET_TOP'
                ],
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.external_links.target',
                'validation' => 'strict'
            ],
            'plugins.external_links.mode' => [
                'type' => 'select',
                'size' => 'large',
                'classes' => 'fancy',
                'label' => 'PLUGINS.EXTERNAL_LINKS.MODE',
                'default' => 'active',
                'options' => [
                    'active' => 'PLUGINS.EXTERNAL_LINKS.MODE_ACTIVE',
                    'passive' => 'PLUGINS.EXTERNAL_LINKS.MODE_PASSIVE'
                ],
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.external_links.mode',
                'validation' => 'strict'
            ],
            'plugins.external_links.content' => [
                'type' => 'tab',
                'name' => 'plugins.external_links.content',
                'validation' => 'strict'
            ],
            'plugins.external_links.tabs' => [
                'type' => 'tabs',
                'active' => 1,
                'class' => 'subtle',
                'name' => 'plugins.external_links.tabs',
                'validation' => 'strict'
            ],
            'plugins.featherlight' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.featherlight.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'hightlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.featherlight.enabled',
                'validation' => 'strict'
            ],
            'plugins.featherlight.active' => [
                'type' => 'toggle',
                'label' => 'Active',
                'hightlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.featherlight.active',
                'validation' => 'strict'
            ],
            'plugins.featherlight.requirejs' => [
                'type' => 'toggle',
                'label' => 'RequireJS',
                'hightlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.featherlight.requirejs',
                'validation' => 'strict'
            ],
            'plugins.featherlight.gallery' => [
                'type' => 'toggle',
                'label' => 'Gallery',
                'hightlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.featherlight.gallery',
                'validation' => 'strict'
            ],
            'plugins.featherlight.openSpeed' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Open Speed',
                'default' => '250',
                'name' => 'plugins.featherlight.openSpeed',
                'validation' => 'strict'
            ],
            'plugins.featherlight.closeSpeed' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Close Speed',
                'default' => '250',
                'name' => 'plugins.featherlight.closeSpeed',
                'validation' => 'strict'
            ],
            'plugins.featherlight.closeOnClick' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Close on Click',
                'options' => [
                    'background' => 'background',
                    'anywhere' => 'anywhere',
                    'false' => 'false'
                ],
                'name' => 'plugins.featherlight.closeOnClick',
                'validation' => 'strict'
            ],
            'plugins.featherlight.closeOnEsc' => [
                'type' => 'toggle',
                'label' => 'Close on Esc',
                'hightlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.featherlight.closeOnEsc',
                'validation' => 'strict'
            ],
            'plugins.featherlight.root' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Root',
                'default' => 'body',
                'name' => 'plugins.featherlight.root',
                'validation' => 'strict'
            ],
            'plugins.featherlight.initTemplate' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Init script',
                'default' => 'plugin://featherlight/js/featherlight.init.js',
                'name' => 'plugins.featherlight.initTemplate',
                'validation' => 'strict'
            ],
            'plugins.feed' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.feed.enabled' => [
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
                ],
                'name' => 'plugins.feed.enabled',
                'validation' => 'strict'
            ],
            'plugins.feed.limit' => [
                'type' => 'text',
                'label' => 'Feed count',
                'validate' => [
                    'type' => 'number',
                    'min' => 10,
                    'max' => 1000
                ],
                'name' => 'plugins.feed.limit',
                'validation' => 'strict'
            ],
            'plugins.feed.description' => [
                'type' => 'textarea',
                'label' => 'Description',
                'name' => 'plugins.feed.description',
                'validation' => 'strict'
            ],
            'plugins.feed.lang' => [
                'type' => 'text',
                'label' => 'Feed language code',
                'default' => 'en',
                'validate' => [
                    'pattern' => '[a-zA-Z]{2,3}(-[a-zA-Z]{2,3})?'
                ],
                'name' => 'plugins.feed.lang',
                'validation' => 'strict'
            ],
            'plugins.feed.length' => [
                'type' => 'text',
                'label' => 'Feed Length',
                'validate' => [
                    'type' => 'number',
                    'min' => 10,
                    'max' => 10000
                ],
                'name' => 'plugins.feed.length',
                'validation' => 'strict'
            ],
            'plugins.feed.enable_json_feed' => [
                'type' => 'toggle',
                'label' => 'JSON feed support',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.feed.enable_json_feed',
                'validation' => 'strict'
            ],
            'plugins.form' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.form.enabled' => [
                'type' => 'hidden',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.enabled',
                'validation' => 'strict'
            ],
            'plugins.form.built_in_css' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_FORM.USE_BUILT_IN_CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.form.refresh_prevention' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_FORM.REFRESH_PREVENTION',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.refresh_prevention',
                'validation' => 'strict'
            ],
            'plugins.form.general' => [
                'type' => 'section',
                'name' => 'plugins.form.general',
                'validation' => 'strict'
            ],
            'plugins.form.files' => [
                'type' => 'section',
                'name' => 'plugins.form.files',
                'validation' => 'strict'
            ],
            'plugins.form.files.multiple' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_FORM.ALLOW_MULTIPLE',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.files.multiple',
                'validation' => 'strict'
            ],
            'plugins.form.files.limit' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_FORM.LIMIT',
                'default' => 10,
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.form.files.limit',
                'validation' => 'strict'
            ],
            'plugins.form.files.destination' => [
                'type' => 'text',
                'size' => 'large',
                'label' => 'PLUGIN_FORM.DESTINATION',
                'default' => '@self',
                'name' => 'plugins.form.files.destination',
                'validation' => 'strict'
            ],
            'plugins.form.files.accept' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_FORM.ACCEPT',
                'classes' => 'fancy',
                'default' => [
                    0 => 'image/*'
                ],
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.form.files.accept',
                'validation' => 'strict'
            ],
            'plugins.form.files.filesize' => [
                'type' => 'text',
                'label' => 'PLUGIN_FORM.FILESIZE',
                'size' => 'x-small',
                'default' => 5,
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'plugins.form.files.filesize',
                'validation' => 'strict'
            ],
            'plugins.form.files.avoid_overwriting' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_FORM.AVOID_OVERWRITING',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.files.avoid_overwriting',
                'validation' => 'strict'
            ],
            'plugins.form.files.random_name' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_FORM.RANDOM_NAME',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.form.files.random_name',
                'validation' => 'strict'
            ],
            'plugins.form.recaptcha' => [
                'type' => 'section',
                'name' => 'plugins.form.recaptcha',
                'validation' => 'strict'
            ],
            'plugins.form.recaptcha.site_key' => [
                'type' => 'text',
                'label' => 'PLUGIN_FORM.RECAPTCHA_SITE_KEY',
                'default' => '',
                'name' => 'plugins.form.recaptcha.site_key',
                'validation' => 'strict'
            ],
            'plugins.form.recaptcha.secret_key' => [
                'type' => 'text',
                'label' => 'PLUGIN_FORM.RECAPTCHA_SECRET_KEY',
                'default' => '',
                'name' => 'plugins.form.recaptcha.secret_key',
                'validation' => 'strict'
            ],
            'plugins.git-sync' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.git-sync.Settings' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.git-sync.Settings',
                'validation' => 'strict'
            ],
            'plugins.git-sync.enabled' => [
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
                ],
                'name' => 'plugins.git-sync.enabled',
                'validation' => 'strict'
            ],
            'plugins.git-sync.folders' => [
                'type' => 'selectize',
                'multiple' => true,
                'size' => 'medium',
                'label' => 'Sync Folders',
                'classes' => 'fancy',
                'default' => [
                    0 => 'pages',
                    1 => 'themes'
                ],
                'options' => [
                    'pages' => 'Pages',
                    'themes' => 'Themes'
                ],
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.git-sync.folders',
                'validation' => 'strict'
            ],
            'plugins.git-sync.repository' => [
                'type' => 'text',
                'label' => 'Git Repository',
                'name' => 'plugins.git-sync.repository',
                'validation' => 'strict'
            ],
            'plugins.git-sync.user' => [
                'type' => 'text',
                'label' => 'Git User',
                'name' => 'plugins.git-sync.user',
                'validation' => 'strict'
            ],
            'plugins.git-sync.password' => [
                'type' => 'enc-password',
                'label' => 'Git Password or Token',
                'description' => 'Enter your password or token to encrypt and securely store it, then save the settings. It will not show up here for security reasons.',
                'name' => 'plugins.git-sync.password',
                'validation' => 'strict'
            ],
            'plugins.git-sync.webhook' => [
                'type' => 'text',
                'label' => 'Repository Web Hook',
                'default' => '/_git-sync',
                'name' => 'plugins.git-sync.webhook',
                'validation' => 'strict'
            ],
            'plugins.git-sync.Advanced' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.git-sync.Advanced',
                'validation' => 'strict'
            ],
            'plugins.git-sync.branch' => [
                'type' => 'text',
                'default' => 'master',
                'label' => 'Local Branch',
                'name' => 'plugins.git-sync.branch',
                'validation' => 'strict'
            ],
            'plugins.git-sync.remote' => [
                'type' => '_parent',
                'name' => 'plugins.git-sync.remote',
                'form_field' => false
            ],
            'plugins.git-sync.remote.name' => [
                'type' => 'text',
                'default' => 'origin',
                'label' => 'Remote Name',
                'name' => 'plugins.git-sync.remote.name',
                'validation' => 'strict'
            ],
            'plugins.git-sync.remote.branch' => [
                'type' => 'text',
                'default' => 'master',
                'label' => 'Remote Branch',
                'name' => 'plugins.git-sync.remote.branch',
                'validation' => 'strict'
            ],
            'plugins.git-sync.git' => [
                'type' => '_parent',
                'name' => 'plugins.git-sync.git',
                'form_field' => false
            ],
            'plugins.git-sync.git.author' => [
                'type' => 'select',
                'default' => 'gituser',
                'label' => 'Commits Author',
                'options' => [
                    'gituser' => 'Use Git User Name',
                    'gitsync' => 'Use GitSync Committer Name',
                    'gravuser' => 'Use Grav User Name',
                    'gravfull' => 'Use Grav User Full Name'
                ],
                'name' => 'plugins.git-sync.git.author',
                'validation' => 'strict'
            ],
            'plugins.git-sync.git.name' => [
                'type' => 'text',
                'default' => 'GitSync',
                'label' => 'Committer Name',
                'name' => 'plugins.git-sync.git.name',
                'validation' => 'strict'
            ],
            'plugins.git-sync.git.email' => [
                'type' => 'text',
                'default' => 'git-sync@trilby.media',
                'label' => 'Committer Email',
                'name' => 'plugins.git-sync.git.email',
                'validation' => 'strict'
            ],
            'plugins.git-sync.git.bin' => [
                'type' => 'text',
                'default' => 'git',
                'label' => 'Git Binary Path',
                'name' => 'plugins.git-sync.git.bin',
                'validation' => 'strict'
            ],
            'plugins.git-sync.logging' => [
                'type' => 'toggle',
                'default' => 0,
                'label' => 'Log Git Commands',
                'highlight' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.git-sync.logging',
                'validation' => 'strict'
            ],
            'plugins.git-sync.Actions' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.git-sync.Actions',
                'validation' => 'strict'
            ],
            'plugins.git-sync._wizard' => [
                'type' => 'git-wizard',
                'label' => 'Text Variable',
                'name' => 'plugins.git-sync._wizard',
                'validation' => 'strict'
            ],
            'plugins.login' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'plugins.login.enabled' => [
                'type' => 'hidden',
                'label' => 'PLUGIN_LOGIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.enabled',
                'validation' => 'loose'
            ],
            'plugins.login.built_in_css' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.BUILTIN_CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.built_in_css',
                'validation' => 'loose'
            ],
            'plugins.login.route' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE',
                'name' => 'plugins.login.route',
                'validation' => 'loose'
            ],
            'plugins.login.redirect_after_login' => [
                'type' => 'text',
                'label' => 'PLUGIN_LOGIN.REDIRECT_AFTER_LOGIN',
                'name' => 'plugins.login.redirect_after_login',
                'validation' => 'loose'
            ],
            'plugins.login.route_forgot' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE_FORGOT',
                'name' => 'plugins.login.route_forgot',
                'validation' => 'loose'
            ],
            'plugins.login.route_reset' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE_RESET',
                'name' => 'plugins.login.route_reset',
                'validation' => 'loose'
            ],
            'plugins.login.route_profile' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE_PROFILE',
                'name' => 'plugins.login.route_profile',
                'validation' => 'loose'
            ],
            'plugins.login.parent_acl' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.USE_PARENT_ACL_LABEL',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.parent_acl',
                'validation' => 'loose'
            ],
            'plugins.login.protect_protected_page_media' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.PROTECT_PROTECTED_PAGE_MEDIA_LABEL',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.protect_protected_page_media',
                'validation' => 'loose'
            ],
            'plugins.login.route_activate' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE_ACTIVATE',
                'name' => 'plugins.login.route_activate',
                'validation' => 'loose'
            ],
            'plugins.login.route_register' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'PLUGIN_LOGIN.ROUTE_REGISTER',
                'name' => 'plugins.login.route_register',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration' => [
                'type' => '_parent',
                'name' => 'plugins.login.user_registration',
                'form_field' => false
            ],
            'plugins.login.user_registration.redirect_after_registration' => [
                'type' => 'text',
                'label' => 'PLUGIN_LOGIN.REDIRECT_AFTER_REGISTRATION',
                'name' => 'plugins.login.user_registration.redirect_after_registration',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.redirect_after_activation' => [
                'type' => 'text',
                'label' => 'PLUGIN_LOGIN.REDIRECT_AFTER_ACTIVATION',
                'name' => 'plugins.login.user_registration.redirect_after_activation',
                'validation' => 'loose'
            ],
            'plugins.login.routes' => [
                'type' => 'section',
                'name' => 'plugins.login.routes',
                'validation' => 'loose'
            ],
            'plugins.login.rememberme' => [
                'type' => 'section',
                'name' => 'plugins.login.rememberme',
                'validation' => 'loose'
            ],
            'plugins.login.rememberme.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.rememberme.enabled',
                'validation' => 'loose'
            ],
            'plugins.login.rememberme.timeout' => [
                'type' => 'text',
                'size' => 'small',
                'default' => 604800,
                'label' => 'PLUGIN_ADMIN.TIMEOUT',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.login.rememberme.timeout',
                'validation' => 'loose'
            ],
            'plugins.login.rememberme.name' => [
                'type' => 'text',
                'size' => 'small',
                'label' => 'PLUGIN_ADMIN.NAME',
                'name' => 'plugins.login.rememberme.name',
                'validation' => 'loose'
            ],
            'plugins.login.login' => [
                'type' => 'tab',
                'name' => 'plugins.login.login',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.ENABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.enabled',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.fields' => [
                'type' => 'array',
                'value_only' => true,
                'label' => 'PLUGIN_LOGIN.REGISTRATION_FIELDS',
                'name' => 'plugins.login.user_registration.fields',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.default_values' => [
                'type' => 'array',
                'label' => 'PLUGIN_LOGIN.DEFAULT_VALUES',
                'name' => 'plugins.login.user_registration.default_values',
                'validation' => 'loose'
            ],
            'plugins.login.registration_fields' => [
                'type' => 'section',
                'name' => 'plugins.login.registration_fields',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.groups' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'PLUGIN_ADMIN.GROUPS',
                '@data-options' => '\\Grav\\User\\Groups::groups',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.login.user_registration.groups',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.access' => [
                'type' => '_parent',
                'name' => 'plugins.login.user_registration.access',
                'form_field' => false
            ],
            'plugins.login.user_registration.access.site' => [
                'type' => 'array',
                'label' => 'PLUGIN_ADMIN.SITE_ACCESS',
                'multiple' => false,
                'validate' => [
                    'type' => 'array'
                ],
                'name' => 'plugins.login.user_registration.access.site',
                'validation' => 'loose'
            ],
            'plugins.login.access_levels' => [
                'type' => 'section',
                'security' => 'admin.super',
                'name' => 'plugins.login.access_levels',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options' => [
                'type' => '_parent',
                'name' => 'plugins.login.user_registration.options',
                'form_field' => false
            ],
            'plugins.login.user_registration.options.validate_password1_and_password2' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.VALIDATE_PASSWORD1_AND_PASSWORD2',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.options.validate_password1_and_password2',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options.set_user_disabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.SET_USER_DISABLED',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.options.set_user_disabled',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options.login_after_registration' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.LOGIN_AFTER_REGISTRATION',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.options.login_after_registration',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options.send_activation_email' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.SEND_ACTIVATION_EMAIL',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.options.send_activation_email',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options.send_notification_email' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.SEND_NOTIFICATION_EMAIL',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.login.user_registration.options.send_notification_email',
                'validation' => 'loose'
            ],
            'plugins.login.user_registration.options.send_welcome_email' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_LOGIN.SEND_WELCOME_EMAIL',
                'highlight' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.YES',
                    0 => 'PLUGIN_ADMIN.NO'
                ],
                'name' => 'plugins.login.user_registration.options.send_welcome_email',
                'validation' => 'loose'
            ],
            'plugins.login.options' => [
                'type' => 'section',
                'name' => 'plugins.login.options',
                'validation' => 'loose'
            ],
            'plugins.login.registration' => [
                'type' => 'tab',
                'name' => 'plugins.login.registration',
                'validation' => 'loose'
            ],
            'plugins.login.max_pw_resets_count' => [
                'type' => 'number',
                'size' => 'x-small',
                'label' => 'PLUGIN_LOGIN.MAX_RESETS_COUNT',
                'append' => 'PLUGIN_LOGIN.RESETS',
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'plugins.login.max_pw_resets_count',
                'validation' => 'loose'
            ],
            'plugins.login.max_pw_resets_interval' => [
                'type' => 'number',
                'size' => 'x-small',
                'label' => 'PLUGIN_LOGIN.MAX_RESETS_INTERVAL',
                'append' => 'PLUGIN_LOGIN.SECONDS',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.login.max_pw_resets_interval',
                'validation' => 'loose'
            ],
            'plugins.login.max_login_count' => [
                'type' => 'number',
                'size' => 'x-small',
                'label' => 'PLUGIN_LOGIN.MAX_LOGINS_COUNT',
                'append' => 'PLUGIN_LOGIN.ATTEMPTS',
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'plugins.login.max_login_count',
                'validation' => 'loose'
            ],
            'plugins.login.max_login_interval' => [
                'type' => 'number',
                'size' => 'x-small',
                'label' => 'PLUGIN_LOGIN.MAX_LOGINS_INTERVAL',
                'append' => 'PLUGIN_LOGIN.SECONDS',
                'validate' => [
                    'type' => 'number',
                    'min' => 1
                ],
                'name' => 'plugins.login.max_login_interval',
                'validation' => 'loose'
            ],
            'plugins.login.Security' => [
                'type' => 'tab',
                'name' => 'plugins.login.Security',
                'validation' => 'loose'
            ],
            'plugins.login.tabs' => [
                'type' => 'tabs',
                'active' => 1,
                'class' => 'subtle',
                'name' => 'plugins.login.tabs',
                'validation' => 'loose'
            ],
            'plugins.markdown-fontawesome' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.markdown-fontawesome.enabled' => [
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
                ],
                'name' => 'plugins.markdown-fontawesome.enabled',
                'validation' => 'strict'
            ],
            'plugins.markdown-notices' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.markdown-notices.enabled' => [
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
                ],
                'name' => 'plugins.markdown-notices.enabled',
                'validation' => 'strict'
            ],
            'plugins.markdown-notices.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.markdown-notices.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.markdown-notices.level_classes' => [
                'type' => 'selectize',
                'size' => 'large',
                'label' => 'Level classes',
                'classes' => 'fancy',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.markdown-notices.level_classes',
                'validation' => 'strict'
            ],
            'plugins.page-inject' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.page-inject.enabled' => [
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
                ],
                'name' => 'plugins.page-inject.enabled',
                'validation' => 'strict'
            ],
            'plugins.page-inject.active' => [
                'type' => 'toggle',
                'label' => 'Activate Site-Wide',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.page-inject.active',
                'validation' => 'strict'
            ],
            'plugins.page-inject.processed_content' => [
                'type' => 'toggle',
                'label' => 'Processed Content',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.page-inject.processed_content',
                'validation' => 'strict'
            ],
            'plugins.pagination' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.pagination.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.pagination.enabled',
                'validation' => 'strict'
            ],
            'plugins.pagination.delta' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'Delta',
                'default' => 0,
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'plugins.pagination.delta',
                'validation' => 'strict'
            ],
            'plugins.pagination.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.pagination.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.problems' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.problems.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.problems.enabled',
                'validation' => 'strict'
            ],
            'plugins.problems.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.problems.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.relatedpages' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'loose'
                ]
            ],
            'plugins.relatedpages.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.enabled',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.basics_title' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.relatedpages.basics_title',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.limit' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_REL_PAGES.LIMIT',
                'validate' => [
                    'type' => 'int',
                    'min' => 0,
                    'max' => 65536
                ],
                'name' => 'plugins.relatedpages.limit',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.show_score' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.SHOW_SCORE',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.show_score',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.filter' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.filter',
                'form_field' => false
            ],
            'plugins.relatedpages.filter.items' => [
                'type' => 'text',
                'yaml' => true,
                'label' => 'PLUGIN_REL_PAGES.ITEMS',
                'default' => '@page: /blog',
                'name' => 'plugins.relatedpages.filter.items',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.filter.order' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.filter.order',
                'form_field' => false
            ],
            'plugins.relatedpages.filter.order.by' => [
                'type' => 'select',
                'label' => 'PLUGIN_REL_PAGES.ORDER_BY',
                'default' => 'date',
                'options' => [
                    'folder' => 'Folder',
                    'title' => 'Title',
                    'date' => 'Date',
                    'default' => 'Default'
                ],
                'name' => 'plugins.relatedpages.filter.order.by',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.filter.order.dir' => [
                'type' => 'select',
                'label' => 'PLUGIN_REL_PAGES.ORDER',
                'default' => 'desc',
                'options' => [
                    'asc' => 'Ascending',
                    'desc' => 'Descending'
                ],
                'name' => 'plugins.relatedpages.filter.order.dir',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.page_in_filter' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.PAGE_IN_FILTER',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.page_in_filter',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.explicit_pages' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.explicit_pages',
                'form_field' => false
            ],
            'plugins.relatedpages.explicit_pages.process' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.EXPLICIT_PROCESS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.explicit_pages.process',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.explicit_pages.score' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_REL_PAGES.EXPLICIT_SCORE',
                'validate' => [
                    'type' => 'int',
                    'min' => 0,
                    'max' => 100
                ],
                'name' => 'plugins.relatedpages.explicit_pages.score',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_title' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.relatedpages.taxonomy_title',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_match' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.taxonomy_match',
                'form_field' => false
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'PLUGIN_REL_PAGES.TAXONOMY',
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy',
                'form_field' => false
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.process' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.TAXONOMY_TAXONOMY_PROCESS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.process',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_content' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_content',
                'form_field' => false
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_content.process' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.TAXONOMY_CONTENT_PROCESS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_content.process',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.content_title' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.relatedpages.content_title',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.content_match' => [
                'type' => '_parent',
                'name' => 'plugins.relatedpages.content_match',
                'form_field' => false
            ],
            'plugins.relatedpages.content_match.process' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_REL_PAGES.CONTENT_PROCESS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.relatedpages.content_match.process',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.advanced_title' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.relatedpages.advanced_title',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.score_scale' => [
                'type' => 'array',
                'label' => 'PLUGIN_REL_PAGES.TAXONOMY_SCORE_SCALE',
                'size' => 'large',
                'default' => [
                    0 => 50,
                    1 => 75,
                    2 => 100
                ],
                'value_only' => true,
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.score_scale',
                'validation' => 'loose'
            ],
            'plugins.relatedpages.taxonomy_match.taxonomy_content.score_scale' => [
                'type' => 'array',
                'label' => 'PLUGIN_REL_PAGES.CONTENT_SCORE_SCALE',
                'size' => 'large',
                'default' => [
                    0 => 50,
                    1 => 75,
                    2 => 100
                ],
                'value_only' => true,
                'name' => 'plugins.relatedpages.taxonomy_match.taxonomy_content.score_scale',
                'validation' => 'loose'
            ],
            'plugins.simplesearch' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.simplesearch.enabled' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.PLUGIN_STATUS',
                'highlight' => 1,
                'default' => 0,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.simplesearch.enabled',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.search_content' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Search Content',
                'default' => 'rendered',
                'options' => [
                    'rendered' => 'Rendered Content (Slower)',
                    'raw' => 'Raw Markdown Content (Faster)'
                ],
                'name' => 'plugins.simplesearch.search_content',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'PLUGIN_ADMIN.ENABLED',
                    0 => 'PLUGIN_ADMIN.DISABLED'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.simplesearch.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.display_button' => [
                'type' => 'toggle',
                'label' => 'Display Search Button',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.simplesearch.display_button',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.ignore_accented_characters' => [
                'type' => 'toggle',
                'label' => 'Ignore accented characters',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.simplesearch.ignore_accented_characters',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.min_query_length' => [
                'type' => 'text',
                'size' => 'x-small',
                'label' => 'Minimum query length',
                'validate' => [
                    'type' => 'number',
                    'min' => 0
                ],
                'name' => 'plugins.simplesearch.min_query_length',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.route' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Route',
                'default' => '/random',
                'name' => 'plugins.simplesearch.route',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.template' => [
                'type' => 'text',
                'size' => 'medium',
                'label' => 'Template',
                'default' => 'simplesearch_results',
                'name' => 'plugins.simplesearch.template',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.filters' => [
                'type' => '_parent',
                'name' => 'plugins.simplesearch.filters',
                'form_field' => false
            ],
            'plugins.simplesearch.filters.category' => [
                'type' => 'selectize',
                'label' => 'Category filter',
                'validate' => [
                    'type' => 'commalist'
                ],
                'name' => 'plugins.simplesearch.filters.category',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.filter_combinator' => [
                'type' => 'select',
                'size' => 'medium',
                'classes' => 'fancy',
                'label' => 'Filter Combinator',
                'default' => 'and',
                'options' => [
                    'and' => 'And - Boolean &&',
                    'or' => 'Or - Boolean ||'
                ],
                'name' => 'plugins.simplesearch.filter_combinator',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.order' => [
                'type' => '_parent',
                'name' => 'plugins.simplesearch.order',
                'form_field' => false
            ],
            'plugins.simplesearch.order.by' => [
                'type' => 'select',
                'size' => 'long',
                'classes' => 'fancy',
                'label' => 'PLUGIN_ADMIN.DEFAULT_ORDERING',
                'options' => [
                    'default' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_DEFAULT',
                    'folder' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_FOLDER',
                    'title' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_TITLE',
                    'date' => 'PLUGIN_ADMIN.DEFAULT_ORDERING_DATE'
                ],
                'name' => 'plugins.simplesearch.order.by',
                'validation' => 'strict'
            ],
            'plugins.simplesearch.order.dir' => [
                'type' => 'toggle',
                'label' => 'PLUGIN_ADMIN.DEFAULT_ORDER_DIRECTION',
                'highlight' => 'asc',
                'default' => 'desc',
                'options' => [
                    'asc' => 'PLUGIN_ADMIN.ASCENDING',
                    'desc' => 'PLUGIN_ADMIN.DESCENDING'
                ],
                'name' => 'plugins.simplesearch.order.dir',
                'validation' => 'strict'
            ],
            'plugins.taxonomylist' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.taxonomylist.enabled' => [
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
                ],
                'name' => 'plugins.taxonomylist.enabled',
                'validation' => 'strict'
            ],
            'plugins.taxonomylist.route' => [
                'type' => 'text',
                'label' => 'Route to blog',
                'validate' => [
                    'pattern' => '/([a-z\\-_]+/?)+'
                ],
                'name' => 'plugins.taxonomylist.route',
                'validation' => 'strict'
            ],
            'plugins.youtube' => [
                'type' => '_root',
                'form_field' => false,
                'form' => [
                    'validation' => 'strict'
                ]
            ],
            'plugins.youtube.enabled' => [
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
                ],
                'name' => 'plugins.youtube.enabled',
                'validation' => 'strict'
            ],
            'plugins.youtube.built_in_css' => [
                'type' => 'toggle',
                'label' => 'Use built in CSS',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.youtube.built_in_css',
                'validation' => 'strict'
            ],
            'plugins.youtube.add_editor_button' => [
                'type' => 'toggle',
                'label' => 'Add editor button',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.youtube.add_editor_button',
                'validation' => 'strict'
            ],
            'plugins.youtube.privacy_enhanced_mode' => [
                'type' => 'toggle',
                'label' => 'Privacy-enhanced mode',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'bool'
                ],
                'name' => 'plugins.youtube.privacy_enhanced_mode',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters' => [
                'type' => 'section',
                'underline' => true,
                'name' => 'plugins.youtube.player_parameters',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.vq' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Preferred video quality',
                'default' => 'default',
                'options' => [
                    'default' => 'Default',
                    'small' => 'Small',
                    'medium' => 'Medium',
                    'large' => 'Large',
                    'highres' => 'High resolution',
                    'hd1080' => 'High definition (1080)',
                    'hd720' => 'High definition (720)'
                ],
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.youtube.player_parameters.vq',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.autoplay' => [
                'type' => 'toggle',
                'label' => 'Autoplay',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.autoplay',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.loop' => [
                'type' => 'toggle',
                'label' => 'Loop',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.loop',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.showinfo' => [
                'type' => 'toggle',
                'label' => 'Show information',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.showinfo',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.rel' => [
                'type' => 'toggle',
                'label' => 'Related videos',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.rel',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.modestbranding' => [
                'type' => 'toggle',
                'label' => 'Modest branding',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.modestbranding',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.color' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Color',
                'default' => 'red',
                'options' => [
                    'red' => 'Red',
                    'white' => 'White'
                ],
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.youtube.player_parameters.color',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.cc_load_policy' => [
                'type' => 'toggle',
                'label' => 'Show closed captions by default',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.cc_load_policy',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.iv_load_policy' => [
                'type' => 'select',
                'size' => 'medium',
                'label' => 'Video annotations',
                'default' => 1,
                'options' => [
                    1 => 'Displayed by default',
                    3 => 'Hidden by default'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.iv_load_policy',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.controls' => [
                'type' => 'toggle',
                'label' => 'Controls',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.controls',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.disablekb' => [
                'type' => 'toggle',
                'label' => 'Keyboard controls',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.disablekb',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.fs' => [
                'type' => 'toggle',
                'label' => 'Fullscreen button',
                'highlight' => 1,
                'default' => 1,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.fs',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.hl' => [
                'type' => 'text',
                'label' => 'Language',
                'default' => '',
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.youtube.player_parameters.hl',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.enablejsapi' => [
                'type' => 'toggle',
                'label' => 'JavaScript API',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    1 => 'Enabled',
                    0 => 'Disabled'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.enablejsapi',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.origin' => [
                'type' => 'text',
                'label' => 'Origin',
                'default' => '',
                'validate' => [
                    'type' => 'string'
                ],
                'name' => 'plugins.youtube.player_parameters.origin',
                'validation' => 'strict'
            ],
            'plugins.youtube.player_parameters.playsinline' => [
                'type' => 'toggle',
                'label' => 'iOS playback behavior',
                'highlight' => 0,
                'default' => 0,
                'options' => [
                    0 => 'Fullscreen',
                    1 => 'Inline'
                ],
                'validate' => [
                    'type' => 'int'
                ],
                'name' => 'plugins.youtube.player_parameters.playsinline',
                'validation' => 'strict'
            ]
        ],
        'rules' => [
            
        ],
        'nested' => [
            'site' => [
                'content' => 'site.content',
                'title' => 'site.title',
                'default_lang' => 'site.default_lang',
                'author' => [
                    'name' => 'site.author.name',
                    'email' => 'site.author.email'
                ],
                'taxonomies' => 'site.taxonomies',
                'sectionone' => 'site.sectionone',
                'chromeless' => [
                    'enabled' => 'site.chromeless.enabled'
                ],
                'sectiontwo' => 'site.sectiontwo',
                'gitrepo' => [
                    'editlinklocation' => 'site.gitrepo.editlinklocation',
                    'typeofgitsyncrepolink' => 'site.gitrepo.typeofgitsyncrepolink',
                    'editnotetext' => 'site.gitrepo.editnotetext',
                    'editlinkicon' => 'site.gitrepo.editlinkicon',
                    'editlinktext' => 'site.gitrepo.editlinktext',
                    'edittreeurl' => 'site.gitrepo.edittreeurl',
                    'editthemelinklocation' => 'site.gitrepo.editthemelinklocation',
                    'editthemelinktext' => 'site.gitrepo.editthemelinktext'
                ],
                'sectionthree' => 'site.sectionthree',
                'sectionfour' => 'site.sectionfour',
                'sectionfive' => 'site.sectionfive',
                'displaymenuentries' => [
                    'enabled' => 'site.displaymenuentries.enabled'
                ],
                'menu' => [
                    'text' => 'site.menu.text',
                    'icon' => 'site.menu.icon',
                    'url' => 'site.menu.url'
                ],
                'hidehomemenulink' => 'site.hidehomemenulink',
                'sectionsix' => 'site.sectionsix',
                'hidesidebaronblogpages' => [
                    'enabled' => 'site.hidesidebaronblogpages.enabled'
                ],
                'icon' => [
                    'post' => 'site.icon.post'
                ],
                'sectionseven' => 'site.sectionseven',
                'cc_license' => [
                    'enabled' => 'site.cc_license.enabled',
                    'type' => 'site.cc_license.type',
                    'icon' => 'site.cc_license.icon',
                    'text' => 'site.cc_license.text'
                ],
                'summary' => [
                    'enabled' => 'site.summary.enabled',
                    'size' => 'site.summary.size',
                    'format' => 'site.summary.format',
                    'delimiter' => 'site.summary.delimiter'
                ],
                'metadata' => 'site.metadata',
                'routes' => 'site.routes',
                'redirects' => 'site.redirects'
            ],
            'media' => 'media',
            'streams' => [
                'schemes' => [
                    'xxx' => 'streams.schemes.xxx'
                ]
            ],
            'system' => [
                'content' => 'system.content',
                'home' => [
                    'alias' => 'system.home.alias',
                    'hide_in_urls' => 'system.home.hide_in_urls'
                ],
                'pages' => [
                    'theme' => 'system.pages.theme',
                    'process' => 'system.pages.process',
                    'dateformat' => [
                        'default' => 'system.pages.dateformat.default',
                        'short' => 'system.pages.dateformat.short',
                        'long' => 'system.pages.dateformat.long'
                    ],
                    'order' => [
                        'by' => 'system.pages.order.by',
                        'dir' => 'system.pages.order.dir'
                    ],
                    'list' => [
                        'count' => 'system.pages.list.count'
                    ],
                    'publish_dates' => 'system.pages.publish_dates',
                    'events' => 'system.pages.events',
                    'append_url_extension' => 'system.pages.append_url_extension',
                    'redirect_default_route' => 'system.pages.redirect_default_route',
                    'redirect_default_code' => 'system.pages.redirect_default_code',
                    'redirect_trailing_slash' => 'system.pages.redirect_trailing_slash',
                    'ignore_hidden' => 'system.pages.ignore_hidden',
                    'ignore_files' => 'system.pages.ignore_files',
                    'ignore_folders' => 'system.pages.ignore_folders',
                    'url_taxonomy_filters' => 'system.pages.url_taxonomy_filters',
                    'twig_first' => 'system.pages.twig_first',
                    'never_cache_twig' => 'system.pages.never_cache_twig',
                    'frontmatter' => [
                        'process_twig' => 'system.pages.frontmatter.process_twig',
                        'ignore_fields' => 'system.pages.frontmatter.ignore_fields'
                    ],
                    'expires' => 'system.pages.expires',
                    'cache_control' => 'system.pages.cache_control',
                    'last_modified' => 'system.pages.last_modified',
                    'etag' => 'system.pages.etag',
                    'vary_accept_encoding' => 'system.pages.vary_accept_encoding',
                    'markdown' => [
                        'extra' => 'system.pages.markdown.extra',
                        'auto_line_breaks' => 'system.pages.markdown.auto_line_breaks',
                        'auto_url_links' => 'system.pages.markdown.auto_url_links',
                        'escape_markup' => 'system.pages.markdown.escape_markup'
                    ]
                ],
                'timezone' => 'system.timezone',
                'languages' => [
                    'supported' => 'system.languages.supported',
                    'include_default_lang' => 'system.languages.include_default_lang',
                    'translations' => 'system.languages.translations',
                    'translations_fallback' => 'system.languages.translations_fallback',
                    'session_store_active' => 'system.languages.session_store_active',
                    'http_accept_language' => 'system.languages.http_accept_language',
                    'override_locale' => 'system.languages.override_locale'
                ],
                'http_headers' => 'system.http_headers',
                'markdown' => 'system.markdown',
                'caching' => 'system.caching',
                'cache' => [
                    'enabled' => 'system.cache.enabled',
                    'check' => [
                        'method' => 'system.cache.check.method'
                    ],
                    'driver' => 'system.cache.driver',
                    'prefix' => 'system.cache.prefix',
                    'clear_images_by_default' => 'system.cache.clear_images_by_default',
                    'cli_compatibility' => 'system.cache.cli_compatibility',
                    'lifetime' => 'system.cache.lifetime',
                    'gzip' => 'system.cache.gzip',
                    'allow_webserver_gzip' => 'system.cache.allow_webserver_gzip',
                    'memcache' => [
                        'server' => 'system.cache.memcache.server',
                        'port' => 'system.cache.memcache.port'
                    ],
                    'memcached' => [
                        'server' => 'system.cache.memcached.server',
                        'port' => 'system.cache.memcached.port'
                    ],
                    'redis' => [
                        'socket' => 'system.cache.redis.socket',
                        'server' => 'system.cache.redis.server',
                        'port' => 'system.cache.redis.port',
                        'password' => 'system.cache.redis.password'
                    ]
                ],
                'twig' => [
                    'cache' => 'system.twig.cache',
                    'debug' => 'system.twig.debug',
                    'auto_reload' => 'system.twig.auto_reload',
                    'autoescape' => 'system.twig.autoescape',
                    'umask_fix' => 'system.twig.umask_fix'
                ],
                'assets' => [
                    'css_pipeline' => 'system.assets.css_pipeline',
                    'css_pipeline_include_externals' => 'system.assets.css_pipeline_include_externals',
                    'css_pipeline_before_excludes' => 'system.assets.css_pipeline_before_excludes',
                    'css_minify' => 'system.assets.css_minify',
                    'css_minify_windows' => 'system.assets.css_minify_windows',
                    'css_rewrite' => 'system.assets.css_rewrite',
                    'js_pipeline' => 'system.assets.js_pipeline',
                    'js_pipeline_include_externals' => 'system.assets.js_pipeline_include_externals',
                    'js_pipeline_before_excludes' => 'system.assets.js_pipeline_before_excludes',
                    'js_minify' => 'system.assets.js_minify',
                    'enable_asset_timestamp' => 'system.assets.enable_asset_timestamp',
                    'collections' => 'system.assets.collections'
                ],
                'errors' => [
                    'display' => 'system.errors.display',
                    'log' => 'system.errors.log'
                ],
                'debugger' => [
                    'enabled' => 'system.debugger.enabled',
                    'shutdown' => [
                        'close_connection' => 'system.debugger.shutdown.close_connection'
                    ]
                ],
                'media' => [
                    'enable_media_timestamp' => 'system.media.enable_media_timestamp',
                    'auto_metadata_exif' => 'system.media.auto_metadata_exif',
                    'allowed_fallback_types' => 'system.media.allowed_fallback_types',
                    'unsupported_inline_types' => 'system.media.unsupported_inline_types'
                ],
                'images' => [
                    'default_image_quality' => 'system.images.default_image_quality',
                    'cache_all' => 'system.images.cache_all',
                    'cache_perms' => 'system.images.cache_perms',
                    'debug' => 'system.images.debug',
                    'auto_fix_orientation' => 'system.images.auto_fix_orientation'
                ],
                'session' => [
                    'enabled' => 'system.session.enabled',
                    'timeout' => 'system.session.timeout',
                    'name' => 'system.session.name',
                    'secure' => 'system.session.secure',
                    'httponly' => 'system.session.httponly',
                    'path' => 'system.session.path',
                    'split' => 'system.session.split'
                ],
                'advanced' => 'system.advanced',
                'gpm' => [
                    'releases' => 'system.gpm.releases',
                    'proxy_url' => 'system.gpm.proxy_url',
                    'method' => 'system.gpm.method',
                    'official_gpm_only' => 'system.gpm.official_gpm_only',
                    'verify_peer' => 'system.gpm.verify_peer'
                ],
                'reverse_proxy_setup' => 'system.reverse_proxy_setup',
                'username_regex' => 'system.username_regex',
                'pwd_regex' => 'system.pwd_regex',
                'wrapped_site' => 'system.wrapped_site',
                'absolute_urls' => 'system.absolute_urls',
                'case_insensitive_urls' => 'system.case_insensitive_urls',
                'param_sep' => 'system.param_sep',
                'force_ssl' => 'system.force_ssl',
                'custom_base_url' => 'system.custom_base_url'
            ],
            'plugins' => [
                'admin' => [
                    'Basics' => 'plugins.admin.Basics',
                    'enabled' => 'plugins.admin.enabled',
                    'cache_enabled' => 'plugins.admin.cache_enabled',
                    'twofa_enabled' => 'plugins.admin.twofa_enabled',
                    'route' => 'plugins.admin.route',
                    'logo_text' => 'plugins.admin.logo_text',
                    'content_padding' => 'plugins.admin.content_padding',
                    'body_classes' => 'plugins.admin.body_classes',
                    'sidebar' => [
                        'activate' => 'plugins.admin.sidebar.activate',
                        'hover_delay' => 'plugins.admin.sidebar.hover_delay',
                        'size' => 'plugins.admin.sidebar.size'
                    ],
                    'theme' => 'plugins.admin.theme',
                    'edit_mode' => 'plugins.admin.edit_mode',
                    'frontend_pages_target' => 'plugins.admin.frontend_pages_target',
                    'pages' => [
                        'show_parents' => 'plugins.admin.pages.show_parents'
                    ],
                    'google_fonts' => 'plugins.admin.google_fonts',
                    'show_beta_msg' => 'plugins.admin.show_beta_msg',
                    'show_github_msg' => 'plugins.admin.show_github_msg',
                    'pages_list_display_field' => 'plugins.admin.pages_list_display_field',
                    'enable_auto_updates_check' => 'plugins.admin.enable_auto_updates_check',
                    'session' => [
                        'timeout' => 'plugins.admin.session.timeout'
                    ],
                    'warnings' => [
                        'delete_page' => 'plugins.admin.warnings.delete_page'
                    ],
                    'hide_page_types' => 'plugins.admin.hide_page_types',
                    'hide_modular_page_types' => 'plugins.admin.hide_modular_page_types',
                    'Dashboard' => 'plugins.admin.Dashboard',
                    'widgets' => [
                        'dashboard-maintenance' => 'plugins.admin.widgets.dashboard-maintenance',
                        'dashboard-statistics' => 'plugins.admin.widgets.dashboard-statistics',
                        'dashboard-notifications' => 'plugins.admin.widgets.dashboard-notifications',
                        'dashboard-feed' => 'plugins.admin.widgets.dashboard-feed',
                        'dashboard-pages' => 'plugins.admin.widgets.dashboard-pages'
                    ],
                    'Notifications' => 'plugins.admin.Notifications',
                    'notifications' => [
                        'feed' => 'plugins.admin.notifications.feed',
                        'dashboard' => 'plugins.admin.notifications.dashboard',
                        'plugins' => 'plugins.admin.notifications.plugins',
                        'themes' => 'plugins.admin.notifications.themes'
                    ],
                    'Popularity' => 'plugins.admin.Popularity',
                    'popularity' => [
                        'enabled' => 'plugins.admin.popularity.enabled',
                        'ignore' => 'plugins.admin.popularity.ignore',
                        'history' => [
                            'daily' => 'plugins.admin.popularity.history.daily',
                            'monthly' => 'plugins.admin.popularity.history.monthly',
                            'visitors' => 'plugins.admin.popularity.history.visitors'
                        ]
                    ],
                    'dashboard' => [
                        'days_of_stats' => 'plugins.admin.dashboard.days_of_stats'
                    ]
                ],
                'archives' => [
                    'enabled' => 'plugins.archives.enabled',
                    'built_in_css' => 'plugins.archives.built_in_css',
                    'date_display_format' => 'plugins.archives.date_display_format',
                    'show_count' => 'plugins.archives.show_count',
                    'limit' => 'plugins.archives.limit',
                    'order' => [
                        'dir' => 'plugins.archives.order.dir',
                        'by' => 'plugins.archives.order.by'
                    ],
                    'filters' => [
                        'category' => 'plugins.archives.filters.category'
                    ],
                    'filter_combinator' => 'plugins.archives.filter_combinator'
                ],
                'bootstrapper' => [
                    'enabled' => 'plugins.bootstrapper.enabled',
                    'always_load' => 'plugins.bootstrapper.always_load',
                    'use_cdn' => 'plugins.bootstrapper.use_cdn',
                    'mode' => 'plugins.bootstrapper.mode',
                    'load_core_css' => 'plugins.bootstrapper.load_core_css',
                    'load_theme_css' => 'plugins.bootstrapper.load_theme_css',
                    'load_core_js' => 'plugins.bootstrapper.load_core_js'
                ],
                'email' => [
                    'enabled' => 'plugins.email.enabled',
                    'mailer' => [
                        'engine' => 'plugins.email.mailer.engine',
                        'smtp' => [
                            'server' => 'plugins.email.mailer.smtp.server',
                            'port' => 'plugins.email.mailer.smtp.port',
                            'encryption' => 'plugins.email.mailer.smtp.encryption',
                            'user' => 'plugins.email.mailer.smtp.user',
                            'password' => 'plugins.email.mailer.smtp.password'
                        ],
                        'sendmail' => [
                            'bin' => 'plugins.email.mailer.sendmail.bin'
                        ]
                    ],
                    'content_type' => 'plugins.email.content_type',
                    'charset' => 'plugins.email.charset',
                    'from' => 'plugins.email.from',
                    'from_name' => 'plugins.email.from_name',
                    'to' => 'plugins.email.to',
                    'to_name' => 'plugins.email.to_name',
                    'cc' => 'plugins.email.cc',
                    'cc_name' => 'plugins.email.cc_name',
                    'bcc' => 'plugins.email.bcc',
                    'reply_to' => 'plugins.email.reply_to',
                    'reply_to_name' => 'plugins.email.reply_to_name',
                    'body' => 'plugins.email.body',
                    'debug' => 'plugins.email.debug'
                ],
                'error' => [
                    'enabled' => 'plugins.error.enabled',
                    'routes' => [
                        404 => 'plugins.error.routes.404'
                    ]
                ],
                'external_links' => [
                    'tabs' => 'plugins.external_links.tabs',
                    'external_links' => 'plugins.external_links.external_links',
                    'enabled' => 'plugins.external_links.enabled',
                    'built_in_css' => 'plugins.external_links.built_in_css',
                    'weight' => 'plugins.external_links.weight',
                    'settings' => 'plugins.external_links.settings',
                    'links' => [
                        'www' => 'plugins.external_links.links.www',
                        'schemes' => 'plugins.external_links.links.schemes'
                    ],
                    'exclude' => [
                        'classes' => 'plugins.external_links.exclude.classes',
                        'domains' => 'plugins.external_links.exclude.domains'
                    ],
                    'content' => 'plugins.external_links.content',
                    'process' => 'plugins.external_links.process',
                    'title' => 'plugins.external_links.title',
                    'no_follow' => 'plugins.external_links.no_follow',
                    'target' => 'plugins.external_links.target',
                    'mode' => 'plugins.external_links.mode'
                ],
                'featherlight' => [
                    'enabled' => 'plugins.featherlight.enabled',
                    'active' => 'plugins.featherlight.active',
                    'requirejs' => 'plugins.featherlight.requirejs',
                    'gallery' => 'plugins.featherlight.gallery',
                    'openSpeed' => 'plugins.featherlight.openSpeed',
                    'closeSpeed' => 'plugins.featherlight.closeSpeed',
                    'closeOnClick' => 'plugins.featherlight.closeOnClick',
                    'closeOnEsc' => 'plugins.featherlight.closeOnEsc',
                    'root' => 'plugins.featherlight.root',
                    'initTemplate' => 'plugins.featherlight.initTemplate'
                ],
                'feed' => [
                    'enabled' => 'plugins.feed.enabled',
                    'limit' => 'plugins.feed.limit',
                    'description' => 'plugins.feed.description',
                    'lang' => 'plugins.feed.lang',
                    'length' => 'plugins.feed.length',
                    'enable_json_feed' => 'plugins.feed.enable_json_feed'
                ],
                'form' => [
                    'enabled' => 'plugins.form.enabled',
                    'general' => 'plugins.form.general',
                    'built_in_css' => 'plugins.form.built_in_css',
                    'refresh_prevention' => 'plugins.form.refresh_prevention',
                    'files' => [
                        'multiple' => 'plugins.form.files.multiple',
                        'limit' => 'plugins.form.files.limit',
                        'destination' => 'plugins.form.files.destination',
                        'accept' => 'plugins.form.files.accept',
                        'filesize' => 'plugins.form.files.filesize',
                        'avoid_overwriting' => 'plugins.form.files.avoid_overwriting',
                        'random_name' => 'plugins.form.files.random_name'
                    ],
                    'recaptcha' => [
                        'site_key' => 'plugins.form.recaptcha.site_key',
                        'secret_key' => 'plugins.form.recaptcha.secret_key'
                    ]
                ],
                'git-sync' => [
                    'Settings' => 'plugins.git-sync.Settings',
                    'enabled' => 'plugins.git-sync.enabled',
                    'folders' => 'plugins.git-sync.folders',
                    'repository' => 'plugins.git-sync.repository',
                    'user' => 'plugins.git-sync.user',
                    'password' => 'plugins.git-sync.password',
                    'webhook' => 'plugins.git-sync.webhook',
                    'Advanced' => 'plugins.git-sync.Advanced',
                    'branch' => 'plugins.git-sync.branch',
                    'remote' => [
                        'name' => 'plugins.git-sync.remote.name',
                        'branch' => 'plugins.git-sync.remote.branch'
                    ],
                    'git' => [
                        'author' => 'plugins.git-sync.git.author',
                        'name' => 'plugins.git-sync.git.name',
                        'email' => 'plugins.git-sync.git.email',
                        'bin' => 'plugins.git-sync.git.bin'
                    ],
                    'logging' => 'plugins.git-sync.logging',
                    'Actions' => 'plugins.git-sync.Actions',
                    '_wizard' => 'plugins.git-sync._wizard'
                ],
                'login' => [
                    'tabs' => 'plugins.login.tabs',
                    'login' => 'plugins.login.login',
                    'enabled' => 'plugins.login.enabled',
                    'built_in_css' => 'plugins.login.built_in_css',
                    'route' => 'plugins.login.route',
                    'redirect_after_login' => 'plugins.login.redirect_after_login',
                    'route_forgot' => 'plugins.login.route_forgot',
                    'route_reset' => 'plugins.login.route_reset',
                    'route_profile' => 'plugins.login.route_profile',
                    'parent_acl' => 'plugins.login.parent_acl',
                    'protect_protected_page_media' => 'plugins.login.protect_protected_page_media',
                    'routes' => 'plugins.login.routes',
                    'route_activate' => 'plugins.login.route_activate',
                    'route_register' => 'plugins.login.route_register',
                    'user_registration' => [
                        'redirect_after_registration' => 'plugins.login.user_registration.redirect_after_registration',
                        'redirect_after_activation' => 'plugins.login.user_registration.redirect_after_activation',
                        'enabled' => 'plugins.login.user_registration.enabled',
                        'fields' => 'plugins.login.user_registration.fields',
                        'default_values' => 'plugins.login.user_registration.default_values',
                        'groups' => 'plugins.login.user_registration.groups',
                        'access' => [
                            'site' => 'plugins.login.user_registration.access.site'
                        ],
                        'options' => [
                            'validate_password1_and_password2' => 'plugins.login.user_registration.options.validate_password1_and_password2',
                            'set_user_disabled' => 'plugins.login.user_registration.options.set_user_disabled',
                            'login_after_registration' => 'plugins.login.user_registration.options.login_after_registration',
                            'send_activation_email' => 'plugins.login.user_registration.options.send_activation_email',
                            'send_notification_email' => 'plugins.login.user_registration.options.send_notification_email',
                            'send_welcome_email' => 'plugins.login.user_registration.options.send_welcome_email'
                        ]
                    ],
                    'rememberme' => [
                        'enabled' => 'plugins.login.rememberme.enabled',
                        'timeout' => 'plugins.login.rememberme.timeout',
                        'name' => 'plugins.login.rememberme.name'
                    ],
                    'registration' => 'plugins.login.registration',
                    'registration_fields' => 'plugins.login.registration_fields',
                    'access_levels' => 'plugins.login.access_levels',
                    'options' => 'plugins.login.options',
                    'Security' => 'plugins.login.Security',
                    'max_pw_resets_count' => 'plugins.login.max_pw_resets_count',
                    'max_pw_resets_interval' => 'plugins.login.max_pw_resets_interval',
                    'max_login_count' => 'plugins.login.max_login_count',
                    'max_login_interval' => 'plugins.login.max_login_interval'
                ],
                'markdown-fontawesome' => [
                    'enabled' => 'plugins.markdown-fontawesome.enabled'
                ],
                'markdown-notices' => [
                    'enabled' => 'plugins.markdown-notices.enabled',
                    'built_in_css' => 'plugins.markdown-notices.built_in_css',
                    'level_classes' => 'plugins.markdown-notices.level_classes'
                ],
                'page-inject' => [
                    'enabled' => 'plugins.page-inject.enabled',
                    'active' => 'plugins.page-inject.active',
                    'processed_content' => 'plugins.page-inject.processed_content'
                ],
                'pagination' => [
                    'enabled' => 'plugins.pagination.enabled',
                    'delta' => 'plugins.pagination.delta',
                    'built_in_css' => 'plugins.pagination.built_in_css'
                ],
                'problems' => [
                    'enabled' => 'plugins.problems.enabled',
                    'built_in_css' => 'plugins.problems.built_in_css'
                ],
                'relatedpages' => [
                    'enabled' => 'plugins.relatedpages.enabled',
                    'basics_title' => 'plugins.relatedpages.basics_title',
                    'limit' => 'plugins.relatedpages.limit',
                    'show_score' => 'plugins.relatedpages.show_score',
                    'filter' => [
                        'items' => 'plugins.relatedpages.filter.items',
                        'order' => [
                            'by' => 'plugins.relatedpages.filter.order.by',
                            'dir' => 'plugins.relatedpages.filter.order.dir'
                        ]
                    ],
                    'page_in_filter' => 'plugins.relatedpages.page_in_filter',
                    'explicit_pages' => [
                        'process' => 'plugins.relatedpages.explicit_pages.process',
                        'score' => 'plugins.relatedpages.explicit_pages.score'
                    ],
                    'taxonomy_title' => 'plugins.relatedpages.taxonomy_title',
                    'taxonomy_match' => [
                        'taxonomy' => 'plugins.relatedpages.taxonomy_match.taxonomy',
                        'taxonomy_taxonomy' => [
                            'process' => 'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.process',
                            'score_scale' => 'plugins.relatedpages.taxonomy_match.taxonomy_taxonomy.score_scale'
                        ],
                        'taxonomy_content' => [
                            'process' => 'plugins.relatedpages.taxonomy_match.taxonomy_content.process',
                            'score_scale' => 'plugins.relatedpages.taxonomy_match.taxonomy_content.score_scale'
                        ]
                    ],
                    'content_title' => 'plugins.relatedpages.content_title',
                    'content_match' => [
                        'process' => 'plugins.relatedpages.content_match.process'
                    ],
                    'advanced_title' => 'plugins.relatedpages.advanced_title'
                ],
                'simplesearch' => [
                    'enabled' => 'plugins.simplesearch.enabled',
                    'search_content' => 'plugins.simplesearch.search_content',
                    'built_in_css' => 'plugins.simplesearch.built_in_css',
                    'display_button' => 'plugins.simplesearch.display_button',
                    'ignore_accented_characters' => 'plugins.simplesearch.ignore_accented_characters',
                    'min_query_length' => 'plugins.simplesearch.min_query_length',
                    'route' => 'plugins.simplesearch.route',
                    'template' => 'plugins.simplesearch.template',
                    'filters' => [
                        'category' => 'plugins.simplesearch.filters.category'
                    ],
                    'filter_combinator' => 'plugins.simplesearch.filter_combinator',
                    'order' => [
                        'by' => 'plugins.simplesearch.order.by',
                        'dir' => 'plugins.simplesearch.order.dir'
                    ]
                ],
                'taxonomylist' => [
                    'enabled' => 'plugins.taxonomylist.enabled',
                    'route' => 'plugins.taxonomylist.route'
                ],
                'youtube' => [
                    'enabled' => 'plugins.youtube.enabled',
                    'built_in_css' => 'plugins.youtube.built_in_css',
                    'add_editor_button' => 'plugins.youtube.add_editor_button',
                    'privacy_enhanced_mode' => 'plugins.youtube.privacy_enhanced_mode',
                    'player_parameters' => [
                        'vq' => 'plugins.youtube.player_parameters.vq',
                        'autoplay' => 'plugins.youtube.player_parameters.autoplay',
                        'loop' => 'plugins.youtube.player_parameters.loop',
                        'showinfo' => 'plugins.youtube.player_parameters.showinfo',
                        'rel' => 'plugins.youtube.player_parameters.rel',
                        'modestbranding' => 'plugins.youtube.player_parameters.modestbranding',
                        'color' => 'plugins.youtube.player_parameters.color',
                        'cc_load_policy' => 'plugins.youtube.player_parameters.cc_load_policy',
                        'iv_load_policy' => 'plugins.youtube.player_parameters.iv_load_policy',
                        'controls' => 'plugins.youtube.player_parameters.controls',
                        'disablekb' => 'plugins.youtube.player_parameters.disablekb',
                        'fs' => 'plugins.youtube.player_parameters.fs',
                        'hl' => 'plugins.youtube.player_parameters.hl',
                        'enablejsapi' => 'plugins.youtube.player_parameters.enablejsapi',
                        'origin' => 'plugins.youtube.player_parameters.origin',
                        'playsinline' => 'plugins.youtube.player_parameters.playsinline'
                    ]
                ]
            ]
        ],
        'dynamic' => [
            'system.timezone' => [
                'options' => [
                    'action' => 'data',
                    'params' => '\\Grav\\Common\\Utils::timezones'
                ]
            ],
            'system.pages.dateformat.default' => [
                'options' => [
                    'action' => 'data',
                    'params' => '\\Grav\\Common\\Utils::dateFormats'
                ]
            ],
            'plugins.login.user_registration.groups' => [
                'options' => [
                    'action' => 'data',
                    'params' => '\\Grav\\User\\Groups::groups'
                ]
            ]
        ],
        'filter' => [
            'validation' => true
        ]
    ]
];
