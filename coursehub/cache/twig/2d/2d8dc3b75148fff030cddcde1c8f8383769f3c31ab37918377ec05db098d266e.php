<?php

/* sidebarpage.html.twig */
class __TwigTemplate_d3ac63a7fb3f06bce7eb792a6421d25af8d2ed8984700a453187bcc85156e39b extends Twig_Template
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
        // line 2
        $this->loadTemplate("sidebarpage.html.twig", "sidebarpage.html.twig", 2, "1452486551")->display($context);
    }

    public function getTemplateName()
    {
        return "sidebarpage.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  19 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# new twig template file - hibbittsdesign.org #}
{% embed 'partials/base.html.twig' %}

  {% block content %}
    <div class=\"container\">
      <div class=\"row\">
        {# check content display flag - hibbittsdesign.org #}
        {% if not (grav.uri.param('chromeless')) %}
          <div class=\"col-sm-8 blog-main\">
{% else %}
<div class=\"col-sm-12 blog-main\">
{% endif %}
          {% if not page.header.hide_page_title %}
          <h3>{{page.title}}</h3>
          {% else %}
          <h3 aria-label={{page.title}}></h3>
          {% endif %}
            {{ page.content }}
            {# Git repository edit link -  hibbittsdesign.org #}
            {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) and not (page.slug == 'pages') %}
              <hr>
              <br>
              {% include 'partials/gitrepo_link_note.html.twig' %}
              <br>
            {% endif %}
          </div>
          {# check content display flag - hibbittsdesign.org #}
          {% if not (grav.uri.param('chromeless')) %}
            <div class=\"col-sm-4 blog-sidebar\">
              {% include 'partials/sidebar.html.twig' with {'blog':page} %}
            </div>
          {% endif %}
        </div>
      </div>
    {% endblock %}

  {% endembed %}
", "sidebarpage.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\sidebarpage.html.twig");
    }
}


/* sidebarpage.html.twig */
class __TwigTemplate_d3ac63a7fb3f06bce7eb792a6421d25af8d2ed8984700a453187bcc85156e39b_1452486551 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->loadTemplate("partials/base.html.twig", "sidebarpage.html.twig", 2);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "partials/base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_content($context, array $blocks = array())
    {
        // line 5
        echo "    <div class=\"container\">
      <div class=\"row\">
        ";
        // line 8
        echo "        ";
        if ( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method")) {
            // line 9
            echo "          <div class=\"col-sm-8 blog-main\">
";
        } else {
            // line 11
            echo "<div class=\"col-sm-12 blog-main\">
";
        }
        // line 13
        echo "          ";
        if ( !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_page_title", array())) {
            // line 14
            echo "          <h3>";
            echo $this->getAttribute(($context["page"] ?? null), "title", array());
            echo "</h3>
          ";
        } else {
            // line 16
            echo "          <h3 aria-label=";
            echo $this->getAttribute(($context["page"] ?? null), "title", array());
            echo "></h3>
          ";
        }
        // line 18
        echo "            ";
        echo $this->getAttribute(($context["page"] ?? null), "content", array());
        echo "
            ";
        // line 20
        echo "            ";
        if (((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "page") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array())) &&  !($this->getAttribute(($context["page"] ?? null), "slug", array()) == "pages"))) {
            // line 21
            echo "              <hr>
              <br>
              ";
            // line 23
            $this->loadTemplate("partials/gitrepo_link_note.html.twig", "sidebarpage.html.twig", 23)->display($context);
            // line 24
            echo "              <br>
            ";
        }
        // line 26
        echo "          </div>
          ";
        // line 28
        echo "          ";
        if ( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method")) {
            // line 29
            echo "            <div class=\"col-sm-4 blog-sidebar\">
              ";
            // line 30
            $this->loadTemplate("partials/sidebar.html.twig", "sidebarpage.html.twig", 30)->display(array_merge($context, array("blog" => ($context["page"] ?? null))));
            // line 31
            echo "            </div>
          ";
        }
        // line 33
        echo "        </div>
      </div>
    ";
    }

    public function getTemplateName()
    {
        return "sidebarpage.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  174 => 33,  170 => 31,  168 => 30,  165 => 29,  162 => 28,  159 => 26,  155 => 24,  153 => 23,  149 => 21,  146 => 20,  141 => 18,  135 => 16,  129 => 14,  126 => 13,  122 => 11,  118 => 9,  115 => 8,  111 => 5,  108 => 4,  19 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# new twig template file - hibbittsdesign.org #}
{% embed 'partials/base.html.twig' %}

  {% block content %}
    <div class=\"container\">
      <div class=\"row\">
        {# check content display flag - hibbittsdesign.org #}
        {% if not (grav.uri.param('chromeless')) %}
          <div class=\"col-sm-8 blog-main\">
{% else %}
<div class=\"col-sm-12 blog-main\">
{% endif %}
          {% if not page.header.hide_page_title %}
          <h3>{{page.title}}</h3>
          {% else %}
          <h3 aria-label={{page.title}}></h3>
          {% endif %}
            {{ page.content }}
            {# Git repository edit link -  hibbittsdesign.org #}
            {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) and not (page.slug == 'pages') %}
              <hr>
              <br>
              {% include 'partials/gitrepo_link_note.html.twig' %}
              <br>
            {% endif %}
          </div>
          {# check content display flag - hibbittsdesign.org #}
          {% if not (grav.uri.param('chromeless')) %}
            <div class=\"col-sm-4 blog-sidebar\">
              {% include 'partials/sidebar.html.twig' with {'blog':page} %}
            </div>
          {% endif %}
        </div>
      </div>
    {% endblock %}

  {% endembed %}
", "sidebarpage.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\sidebarpage.html.twig");
    }
}
