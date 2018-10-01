<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => 'C:/xampp/htdocs/seniorknows/new_seniorknows_site_by_KeYang/coursehub/user/blueprints/config/site.yaml',
    'modified' => 1512492088,
    'data' => [
        '@extends' => '@parent',
        'form' => [
            'fields' => [
                'sectionone' => [
                    'type' => 'section',
                    'title' => 'Chromeless Pages',
                    'underline' => true,
                    'ordering@' => 1,
                    'fields' => [
                        'chromeless.enabled' => [
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
                            ]
                        ]
                    ]
                ],
                'sectiontwo' => [
                    'type' => 'section',
                    'title' => 'Git Sync Link Setup',
                    'underline' => true,
                    'ordering@' => 2,
                    'fields' => [
                        'gitrepo.editlinklocation' => [
                            'type' => 'select',
                            'size' => 'medium',
                            'label' => 'Display of Git Sync Link',
                            'default' => 'menu',
                            'options' => [
                                'menu' => 'Menu',
                                'page' => 'Page (visible when \'Chromeless\')',
                                'footer' => 'Footer',
                                'none' => 'None'
                            ]
                        ],
                        'gitrepo.typeofgitsyncrepolink' => [
                            'type' => 'select',
                            'size' => 'medium',
                            'label' => 'Type of Git Sync Link',
                            'default' => 'edit',
                            'options' => [
                                'view' => 'View Git Repository',
                                'edit' => 'View/Edit Page in Git Repository'
                            ]
                        ]
                    ]
                ],
                'sectionthree' => [
                    'type' => 'section',
                    'title' => 'Git Sync Link Options',
                    'underline' => true,
                    'ordering@' => 3,
                    'fields' => [
                        'gitrepo.editnotetext' => [
                            'type' => 'input.text',
                            'size' => 'long',
                            'label' => 'Text before Git Sync Link on Pages',
                            'description' => 'The text before the Git Sync link when displayed on a page, e.g. \'Have a suggestion or correction?\'.'
                        ],
                        'gitrepo.editlinkicon' => [
                            'type' => 'text',
                            'size' => 'small',
                            'label' => 'Custom Git Sync Font Awesome Icon',
                            'description' => 'Short name, e.g. \'code-fork\'.',
                            'help' => 'Icon short name.',
                            'validate' => [
                                'type' => 'text'
                            ]
                        ],
                        'gitrepo.editlinktext' => [
                            'type' => 'input.text',
                            'size' => 'medium',
                            'label' => 'Custom Git Sync Link Text',
                            'description' => 'Git Sync link text, e.g. \'View Page in GitHub\'.'
                        ],
                        'gitrepo.edittreeurl' => [
                            'type' => 'text',
                            'size' => 'long',
                            'label' => 'Custom Git Repository Tree URL',
                            'help' => 'Enter the URL that leads to the pages folder of your Git Repository.',
                            'description' => 'URL path to the pages folder, but with \'/pages\' and everything following it removed. For example, \'https://github.com/paulhibbitts/demo-grav-course-hub/tree/master\'.',
                            'validate' => [
                                'type' => 'URL'
                            ]
                        ]
                    ]
                ],
                'sectionfour' => [
                    'type' => 'section',
                    'title' => 'Git Sync Site Theme Files Link',
                    'underline' => true,
                    'ordering@' => 4,
                    'fields' => [
                        'gitrepo.editthemelinklocation' => [
                            'type' => 'select',
                            'label' => 'Display of Site Theme Files Link',
                            'default' => 'None',
                            'size' => 'small',
                            'options' => [
                                'footer' => 'Footer',
                                'none' => 'None'
                            ]
                        ],
                        'gitrepo.editthemelinktext' => [
                            'type' => 'input.text',
                            'size' => 'medium',
                            'label' => 'Site Theme Files Link Text',
                            'default' => 'Site Theme Files',
                            'description' => 'Customize the Site Theme Files link text.'
                        ]
                    ]
                ],
                'sectionfive' => [
                    'type' => 'section',
                    'title' => 'Menubar',
                    'underline' => true,
                    'ordering@' => 5,
                    'fields' => [
                        'displaymenuentries.enabled' => [
                            'type' => 'toggle',
                            'label' => 'Display Custom Menubar Items',
                            'help' => 'Determines if any defined custom menubar entries are displayed in the menubar.',
                            'default' => 0,
                            'highlight' => 1,
                            'options' => [
                                1 => 'Yes',
                                0 => 'No'
                            ],
                            'validate' => [
                                'type' => 'bool'
                            ]
                        ],
                        'menu' => [
                            'name' => 'menu',
                            'type' => 'list',
                            'label' => 'Custom Menubar Items',
                            'fields' => [
                                '.text' => [
                                    'type' => 'text',
                                    'label' => 'Text'
                                ],
                                '.icon' => [
                                    'type' => 'text',
                                    'label' => 'Icon'
                                ],
                                '.url' => [
                                    'type' => 'text',
                                    'label' => 'URL'
                                ]
                            ]
                        ],
                        'hidehomemenulink' => [
                            'type' => 'toggle',
                            'label' => 'Include Homepage Link in Menubar',
                            'help' => 'Determines if the link to the Homepage is included in the menubar.',
                            'default' => 0,
                            'highlight' => 0,
                            'options' => [
                                0 => 'Yes',
                                1 => 'No'
                            ],
                            'validate' => [
                                'type' => 'bool'
                            ]
                        ]
                    ]
                ],
                'sectionsix' => [
                    'type' => 'section',
                    'title' => 'Blog Options',
                    'underline' => true,
                    'ordering@' => 6,
                    'fields' => [
                        'hidesidebaronblogpages.enabled' => [
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
                            ]
                        ],
                        'icon.post' => [
                            'type' => 'text',
                            'size' => 'medium',
                            'label' => 'Default Blog Post Font Awesome Icon',
                            'default' => 'calendar-o',
                            'description' => 'Short name, e.g. \'calendar-o\'.',
                            'help' => 'Determines the default Font Awesome icon used for the blog posts.',
                            'validate' => [
                                'type' => 'text'
                            ]
                        ]
                    ]
                ],
                'sectionseven' => [
                    'type' => 'section',
                    'title' => 'Creative Commons (CC) License',
                    'underline' => true,
                    'ordering@' => 7,
                    'fields' => [
                        'cc_license.enabled' => [
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
                            ]
                        ],
                        'cc_license.type' => [
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
                            ]
                        ],
                        'cc_license.icon' => [
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
                            ]
                        ],
                        'cc_license.text' => [
                            'type' => 'text',
                            'size' => 'long',
                            'description' => 'For example, \'Except for embedded content or elsewhere noted.\'',
                            'label' => 'Additional CC License Text',
                            'validate' => [
                                'type' => 'text'
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
];
