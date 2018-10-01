<?php

/* blog.html.twig */
class __TwigTemplate_14af53dfb82846ecd7a245699a7a1b6c36a75e14c80122a6cef0feb6abd7be79 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $this->loadTemplate("blog.html.twig", "blog.html.twig", 1, "40101940")->display($context);
    }

    public function getTemplateName()
    {
        return "blog.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% embed 'partials/base.html.twig' %}

  {% set collection = page.collection() %}
  {% set base_url = page.url %}
  {% set feed_url = base_url %}

  {% if base_url == '/' %}
    {% set base_url = '' %}
  {% endif %}

  {% if base_url == base_url_relative %}
    {% set feed_url = base_url~'/'~page.slug %}
  {% endif  %}

  {% block content %}

\t\t\t\t{% if page.content is not empty %}
        <div class=\"header\">
            <div class=\"container\">
                {{ page.content }}
            </div>
        </div>
        {% endif  %}

    <div class=\"container\">
      <div class=\"row\">
        {# check content display flag - hibbittsdesign.org #}
        {% if not (grav.uri.param('chromeless')) and not (config.site.hidesidebaronblogpages.enabled) %}
          <div class=\"col-sm-8 blog-main\">
          {% else %}
            <div class=\"col-sm-12 blog-main\">
            {% endif %}
            {# Added reminders and preparations blocks and content check - hibbittsdesign.org #}

            {% for module in page.collection('modular_content') %}
              {% if (module.content|striptags)|trim %}
                <p>{{ module.content }}</p>
              {% endif %}
            {% endfor %}

            {% if config.plugins.breadcrumbs.enabled %}
              {% include 'partials/breadcrumbs.html.twig' %}
            {% endif %}

            {# Added featured post ability for multiple blogs - hibbittsdesign.org #}
            {% for post in taxonomy.findTaxonomy({'tag': \"featured\"}) %}
              {% if (post.header.hide_from_post_list != true) and (post.parent.slug == page.slug) %}
                {% include 'partials/blog_item.html.twig' with {'page':post, 'truncate':true} %}
              {% endif %}
            {% endfor %}

            {% for child in collection %}
              {% if child.header.hide_from_post_list != true %}
                {% if \"featured\" not in child.taxonomy['tag'] %}
                  {# multi-course hub compatibility - hibbittsdesign.org #}
                  {% if (not child.slug|contains('sidebar')) and (not child.slug|contains('headerimage')) %}
                    {% include 'partials/blog_item.html.twig' with {'blog':page, 'page':child, 'truncate':true} %}
                  {% endif %}
                {% endif %}
              {% endif %}
            {% endfor %}

          </div>

          {# check content display flag - hibbittsdesign.org #}
          {% if not (grav.uri.param('chromeless')) and not (config.site.hidesidebaronblogpages.enabled) %}
            <div class=\"col-sm-4 blog-sidebar\">
              {% include 'partials/sidebar.html.twig' with {'blog':page} %}
            </div>
            {% endif %}
          </div>

          {# Git repository edit link - hibbittsdesign.org #}
          {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) %}
            {% include 'partials/gitrepo_link_note.html.twig' %}
          {% endif %}

        </div>

      {% endblock %}

      {% block pagination %}
        {% if config.plugins.pagination.enabled and collection.params.pagination %}
          <div class=\"container\">
            <div class=\"row\">
              <div class=\"col-sm-8 text-center\">
                {% include 'partials/pagination.html.twig' with {'base_url':page.url, 'pagination':collection.params.pagination} %}
              </div>
            </div>
          </div>
        {% endif %}
      {% endblock %}

    {% endembed %}
", "blog.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\blog.html.twig");
    }
}


/* blog.html.twig */
class __TwigTemplate_14af53dfb82846ecd7a245699a7a1b6c36a75e14c80122a6cef0feb6abd7be79_40101940 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->loadTemplate("partials/base.html.twig", "blog.html.twig", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
            'pagination' => array($this, 'block_pagination'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "partials/base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 3
        $context["collection"] = $this->getAttribute(($context["page"] ?? null), "collection", array(), "method");
        // line 4
        $context["base_url"] = $this->getAttribute(($context["page"] ?? null), "url", array());
        // line 5
        $context["feed_url"] = ($context["base_url"] ?? null);
        // line 7
        if ((($context["base_url"] ?? null) == "/")) {
            // line 8
            $context["base_url"] = "";
        }
        // line 11
        if ((($context["base_url"] ?? null) == ($context["base_url_relative"] ?? null))) {
            // line 12
            $context["feed_url"] = ((($context["base_url"] ?? null) . "/") . $this->getAttribute(($context["page"] ?? null), "slug", array()));
        }
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 15
    public function block_content($context, array $blocks = array())
    {
        // line 16
        echo "
\t\t\t\t";
        // line 17
        if ( !twig_test_empty($this->getAttribute(($context["page"] ?? null), "content", array()))) {
            // line 18
            echo "        <div class=\"header\">
            <div class=\"container\">
                ";
            // line 20
            echo $this->getAttribute(($context["page"] ?? null), "content", array());
            echo "
            </div>
        </div>
        ";
        }
        // line 24
        echo "
    <div class=\"container\">
      <div class=\"row\">
        ";
        // line 28
        echo "        ";
        if (( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method") &&  !$this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "hidesidebaronblogpages", array()), "enabled", array()))) {
            // line 29
            echo "          <div class=\"col-sm-8 blog-main\">
          ";
        } else {
            // line 31
            echo "            <div class=\"col-sm-12 blog-main\">
            ";
        }
        // line 33
        echo "            ";
        // line 34
        echo "
            ";
        // line 35
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["page"] ?? null), "collection", array(0 => "modular_content"), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["module"]) {
            // line 36
            echo "              ";
            if (twig_trim_filter(strip_tags($this->getAttribute($context["module"], "content", array())))) {
                // line 37
                echo "                <p>";
                echo $this->getAttribute($context["module"], "content", array());
                echo "</p>
              ";
            }
            // line 39
            echo "            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['module'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "
            ";
        // line 41
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "breadcrumbs", array()), "enabled", array())) {
            // line 42
            echo "              ";
            $this->loadTemplate("partials/breadcrumbs.html.twig", "blog.html.twig", 42)->display($context);
            // line 43
            echo "            ";
        }
        // line 44
        echo "
            ";
        // line 46
        echo "            ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["taxonomy"] ?? null), "findTaxonomy", array(0 => array("tag" => "featured")), "method"));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 47
            echo "              ";
            if ((($this->getAttribute($this->getAttribute($context["post"], "header", array()), "hide_from_post_list", array()) != true) && ($this->getAttribute($this->getAttribute($context["post"], "parent", array()), "slug", array()) == $this->getAttribute(($context["page"] ?? null), "slug", array())))) {
                // line 48
                echo "                ";
                $this->loadTemplate("partials/blog_item.html.twig", "blog.html.twig", 48)->display(array_merge($context, array("page" => $context["post"], "truncate" => true)));
                // line 49
                echo "              ";
            }
            // line 50
            echo "            ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 51
        echo "
            ";
        // line 52
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["collection"] ?? null));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
            // line 53
            echo "              ";
            if (($this->getAttribute($this->getAttribute($context["child"], "header", array()), "hide_from_post_list", array()) != true)) {
                // line 54
                echo "                ";
                if (!twig_in_filter("featured", $this->getAttribute($this->getAttribute($context["child"], "taxonomy", array()), "tag", array(), "array"))) {
                    // line 55
                    echo "                  ";
                    // line 56
                    echo "                  ";
                    if (( !$this->env->getExtension('Grav\Common\Twig\TwigExtension')->containsFilter($this->getAttribute($context["child"], "slug", array()), "sidebar") &&  !$this->env->getExtension('Grav\Common\Twig\TwigExtension')->containsFilter($this->getAttribute($context["child"], "slug", array()), "headerimage"))) {
                        // line 57
                        echo "                    ";
                        $this->loadTemplate("partials/blog_item.html.twig", "blog.html.twig", 57)->display(array_merge($context, array("blog" => ($context["page"] ?? null), "page" => $context["child"], "truncate" => true)));
                        // line 58
                        echo "                  ";
                    }
                    // line 59
                    echo "                ";
                }
                // line 60
                echo "              ";
            }
            // line 61
            echo "            ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 62
        echo "
          </div>

          ";
        // line 66
        echo "          ";
        if (( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method") &&  !$this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "hidesidebaronblogpages", array()), "enabled", array()))) {
            // line 67
            echo "            <div class=\"col-sm-4 blog-sidebar\">
              ";
            // line 68
            $this->loadTemplate("partials/sidebar.html.twig", "blog.html.twig", 68)->display(array_merge($context, array("blog" => ($context["page"] ?? null))));
            // line 69
            echo "            </div>
            ";
        }
        // line 71
        echo "          </div>

          ";
        // line 74
        echo "          ";
        if ((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "page") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array()))) {
            // line 75
            echo "            ";
            $this->loadTemplate("partials/gitrepo_link_note.html.twig", "blog.html.twig", 75)->display($context);
            // line 76
            echo "          ";
        }
        // line 77
        echo "
        </div>

      ";
    }

    // line 82
    public function block_pagination($context, array $blocks = array())
    {
        // line 83
        echo "        ";
        if (($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "pagination", array()), "enabled", array()) && $this->getAttribute($this->getAttribute(($context["collection"] ?? null), "params", array()), "pagination", array()))) {
            // line 84
            echo "          <div class=\"container\">
            <div class=\"row\">
              <div class=\"col-sm-8 text-center\">
                ";
            // line 87
            $this->loadTemplate("partials/pagination.html.twig", "blog.html.twig", 87)->display(array_merge($context, array("base_url" => $this->getAttribute(($context["page"] ?? null), "url", array()), "pagination" => $this->getAttribute($this->getAttribute(($context["collection"] ?? null), "params", array()), "pagination", array()))));
            // line 88
            echo "              </div>
            </div>
          </div>
        ";
        }
        // line 92
        echo "      ";
    }

    public function getTemplateName()
    {
        return "blog.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  410 => 92,  404 => 88,  402 => 87,  397 => 84,  394 => 83,  391 => 82,  384 => 77,  381 => 76,  378 => 75,  375 => 74,  371 => 71,  367 => 69,  365 => 68,  362 => 67,  359 => 66,  354 => 62,  340 => 61,  337 => 60,  334 => 59,  331 => 58,  328 => 57,  325 => 56,  323 => 55,  320 => 54,  317 => 53,  300 => 52,  297 => 51,  283 => 50,  280 => 49,  277 => 48,  274 => 47,  256 => 46,  253 => 44,  250 => 43,  247 => 42,  245 => 41,  242 => 40,  236 => 39,  230 => 37,  227 => 36,  223 => 35,  220 => 34,  218 => 33,  214 => 31,  210 => 29,  207 => 28,  202 => 24,  195 => 20,  191 => 18,  189 => 17,  186 => 16,  183 => 15,  179 => 1,  176 => 12,  174 => 11,  171 => 8,  169 => 7,  167 => 5,  165 => 4,  163 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% embed 'partials/base.html.twig' %}

  {% set collection = page.collection() %}
  {% set base_url = page.url %}
  {% set feed_url = base_url %}

  {% if base_url == '/' %}
    {% set base_url = '' %}
  {% endif %}

  {% if base_url == base_url_relative %}
    {% set feed_url = base_url~'/'~page.slug %}
  {% endif  %}

  {% block content %}

\t\t\t\t{% if page.content is not empty %}
        <div class=\"header\">
            <div class=\"container\">
                {{ page.content }}
            </div>
        </div>
        {% endif  %}

    <div class=\"container\">
      <div class=\"row\">
        {# check content display flag - hibbittsdesign.org #}
        {% if not (grav.uri.param('chromeless')) and not (config.site.hidesidebaronblogpages.enabled) %}
          <div class=\"col-sm-8 blog-main\">
          {% else %}
            <div class=\"col-sm-12 blog-main\">
            {% endif %}
            {# Added reminders and preparations blocks and content check - hibbittsdesign.org #}

            {% for module in page.collection('modular_content') %}
              {% if (module.content|striptags)|trim %}
                <p>{{ module.content }}</p>
              {% endif %}
            {% endfor %}

            {% if config.plugins.breadcrumbs.enabled %}
              {% include 'partials/breadcrumbs.html.twig' %}
            {% endif %}

            {# Added featured post ability for multiple blogs - hibbittsdesign.org #}
            {% for post in taxonomy.findTaxonomy({'tag': \"featured\"}) %}
              {% if (post.header.hide_from_post_list != true) and (post.parent.slug == page.slug) %}
                {% include 'partials/blog_item.html.twig' with {'page':post, 'truncate':true} %}
              {% endif %}
            {% endfor %}

            {% for child in collection %}
              {% if child.header.hide_from_post_list != true %}
                {% if \"featured\" not in child.taxonomy['tag'] %}
                  {# multi-course hub compatibility - hibbittsdesign.org #}
                  {% if (not child.slug|contains('sidebar')) and (not child.slug|contains('headerimage')) %}
                    {% include 'partials/blog_item.html.twig' with {'blog':page, 'page':child, 'truncate':true} %}
                  {% endif %}
                {% endif %}
              {% endif %}
            {% endfor %}

          </div>

          {# check content display flag - hibbittsdesign.org #}
          {% if not (grav.uri.param('chromeless')) and not (config.site.hidesidebaronblogpages.enabled) %}
            <div class=\"col-sm-4 blog-sidebar\">
              {% include 'partials/sidebar.html.twig' with {'blog':page} %}
            </div>
            {% endif %}
          </div>

          {# Git repository edit link - hibbittsdesign.org #}
          {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) %}
            {% include 'partials/gitrepo_link_note.html.twig' %}
          {% endif %}

        </div>

      {% endblock %}

      {% block pagination %}
        {% if config.plugins.pagination.enabled and collection.params.pagination %}
          <div class=\"container\">
            <div class=\"row\">
              <div class=\"col-sm-8 text-center\">
                {% include 'partials/pagination.html.twig' with {'base_url':page.url, 'pagination':collection.params.pagination} %}
              </div>
            </div>
          </div>
        {% endif %}
      {% endblock %}

    {% endembed %}
", "blog.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\blog.html.twig");
    }
}
