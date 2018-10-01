<?php

/* partials/navigation.html.twig */
class __TwigTemplate_c3ca8747c31f9990855df0c556c72aae82f2cbaf887739a50d9c1626b77ae0a1 extends Twig_Template
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
        // line 3
        $context["arrayofpath"] = twig_split_filter($this->env, $this->getAttribute(($context["uri"] ?? null), "path", array()), "/");
        // line 4
        $context["firstfolderofpath"] = $this->getAttribute(($context["arrayofpath"] ?? null), 1, array(), "array");
        // line 5
        if ((($context["firstfolderofpath"] ?? null) == null)) {
            // line 6
            echo "  ";
            $context["background_image"] = twig_first($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => "/headerimage"), "method"), "media", array()), "images", array()));
        } else {
            // line 8
            echo "  ";
            $context["background_image"] = twig_first($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => (("/" . ($context["firstfolderofpath"] ?? null)) . "/headerimage")), "method"), "media", array()), "images", array()));
        }
        // line 10
        if (($context["background_image"] ?? null)) {
            // line 11
            echo "  ";
            // line 12
            echo "  <div class=\"myheader\" style=\"background-image: url(";
            echo $this->getAttribute(($context["background_image"] ?? null), "url", array());
            echo ");\"></div>
  <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">
  ";
        } else {
            // line 15
            echo "    ";
            $context["background_image"] = twig_first($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => "/headerimage"), "method"), "media", array()), "images", array()));
            // line 16
            echo "    ";
            if (($context["background_image"] ?? null)) {
                // line 17
                echo "      <div class=\"myheader\" style=\"background-image: url(";
                echo $this->getAttribute(($context["background_image"] ?? null), "url", array());
                echo ");\"></div>
      <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">
        ";
                // line 20
                echo "      ";
            } else {
                // line 21
                echo "        ";
                // line 22
                echo "        <body style=\"margin-top: 60px;\">
          <nav class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">
          ";
            }
            // line 25
            echo "        ";
        }
        // line 26
        echo "        ";
        // line 27
        echo "        <div class=\"container\">
          <div class=\"navbar-header\">
            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">
              <span class=\"sr-only\">Toggle navigation</span>
              <span class=\"icon-bar\"></span>
              <span class=\"icon-bar\"></span>
              <span class=\"icon-bar\"></span>
            </button>
            <strong>
              <a class=\"navbar-brand\" href=\"";
        // line 36
        echo (((($context["base_url"] ?? null) == "")) ? ("/") : (($context["base_url_relative"] ?? null)));
        echo "\">";
        echo $this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "title", array());
        echo "</a>
            </strong>
          </div>
          <div class=\"navbar-collapse collapse\">
            <ul class=\"nav navbar-nav navbar-right\">
              ";
        // line 41
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute(($context["pages"] ?? null), "children", array()), "visible", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["page"]) {
            // line 42
            echo "                ";
            // line 43
            echo "                ";
            // line 44
            echo "                ";
            if (($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "themes", array()), "bootstrap", array()), "dropdown", array()), "enabled", array()) && ($this->getAttribute($this->getAttribute($this->getAttribute($context["page"], "children", array()), "visible", array()), "count", array()) > 0))) {
                // line 45
                echo "                  <li class=\"dropdown ";
                echo ($context["current_page"] ?? null);
                echo "\">
                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">";
                // line 46
                echo $this->getAttribute($context["page"], "menu", array());
                echo "
                      <span class=\"caret\"></span>
                    </a>
                    <ul class=\"dropdown-menu\" role=\"menu\">
                      ";
                // line 51
                echo "                      ";
                // line 52
                echo "                      ";
                // line 53
                echo "                      ";
                // line 57
                echo "                      ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($context["page"], "children", array()), "visible", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                    // line 58
                    echo "                        ";
                    $context["current_child"] = ((($this->getAttribute($context["child"], "active", array()) || $this->getAttribute($context["child"], "activeChild", array()))) ? ("active") : (""));
                    // line 59
                    echo "                        <li class=\"";
                    echo ($context["current_child"] ?? null);
                    echo "\">
                          <a href=\"";
                    // line 60
                    echo $this->getAttribute($context["child"], "url", array());
                    echo "\">";
                    echo $this->getAttribute($context["child"], "menu", array());
                    echo "</a>
                        </li>
                      ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 63
                echo "                    </ul>
                  </li>
                ";
            } else {
                // line 66
                echo "                ";
                if (($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "hidehomemenulink", array()) && ($this->getAttribute($context["page"], "slug", array()) == "home"))) {
                    // line 67
                    echo "                  ";
                    // line 68
                    echo "                ";
                } else {
                    // line 69
                    echo "                    <li class=\"";
                    echo ($context["current_page"] ?? null);
                    echo "\">
                    <a href=\"";
                    // line 70
                    echo $this->getAttribute($context["page"], "url", array());
                    echo "\">";
                    echo $this->getAttribute($context["page"], "menu", array());
                    echo "</a>
                  </li>
                  ";
                }
                // line 73
                echo "                ";
            }
            // line 74
            echo "              ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['page'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 75
        echo "              ";
        // line 76
        echo "              ";
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "displaymenuentries", array()), "enabled", array())) {
            // line 77
            echo "                ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["site"] ?? null), "menu", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["mitem"]) {
                // line 78
                echo "                  <li>
                    ";
                // line 80
                echo "                    <a class=\"newwindow\" href=\"";
                echo $this->getAttribute($context["mitem"], "url", array());
                echo "\">
                      ";
                // line 81
                if ($this->getAttribute($context["mitem"], "icon", array())) {
                    // line 82
                    echo "                        <i class=\"fa fa-";
                    echo $this->getAttribute($context["mitem"], "icon", array());
                    echo "\"></i>
                        <span>";
                    // line 83
                    echo $this->getAttribute($context["mitem"], "text", array());
                    echo "</span>
                      ";
                } else {
                    // line 85
                    echo "                        ";
                    echo $this->getAttribute($context["mitem"], "text", array());
                    echo "
                      ";
                }
                // line 87
                echo "                    </a>
                  </li>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mitem'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 90
            echo "              ";
        }
        // line 91
        echo "              ";
        // line 92
        echo "              ";
        if (((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "menu") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array())) &&  !($this->getAttribute(($context["page"] ?? null), "slug", array()) == "pages"))) {
            // line 93
            echo "                <li>
                  ";
            // line 94
            $this->loadTemplate("partials/gitrepo_link.html.twig", "partials/navigation.html.twig", 94)->display($context);
            // line 95
            echo "                </li>
              ";
        }
        // line 97
        echo "
              ";
        // line 98
        if (($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "login", array()), "enabled", array()) && $this->getAttribute($this->getAttribute(($context["grav"] ?? null), "user", array()), "username", array()))) {
            // line 99
            echo "                <li>
                  <i class=\"fa fa-lock\"></i>
                  ";
            // line 101
            $this->loadTemplate("partials/login-status.html.twig", "partials/navigation.html.twig", 101)->display($context);
            echo "</li>
              ";
        }
        // line 103
        echo "            </ul>
          </div>
        </div>
      </nav>
";
    }

    public function getTemplateName()
    {
        return "partials/navigation.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  255 => 103,  250 => 101,  246 => 99,  244 => 98,  241 => 97,  237 => 95,  235 => 94,  232 => 93,  229 => 92,  227 => 91,  224 => 90,  216 => 87,  210 => 85,  205 => 83,  200 => 82,  198 => 81,  193 => 80,  190 => 78,  185 => 77,  182 => 76,  180 => 75,  174 => 74,  171 => 73,  163 => 70,  158 => 69,  155 => 68,  153 => 67,  150 => 66,  145 => 63,  134 => 60,  129 => 59,  126 => 58,  121 => 57,  119 => 53,  117 => 52,  115 => 51,  108 => 46,  103 => 45,  100 => 44,  98 => 43,  96 => 42,  92 => 41,  82 => 36,  71 => 27,  69 => 26,  66 => 25,  61 => 22,  59 => 21,  56 => 20,  50 => 17,  47 => 16,  44 => 15,  37 => 12,  35 => 11,  33 => 10,  29 => 8,  25 => 6,  23 => 5,  21 => 4,  19 => 3,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# Check and display for header image above navbar - hibbittsdesign.org#}
{# multi-course hub compatibility - hibbittsdesign.org #}
{% set arrayofpath = uri.path|split('/') %}
{% set firstfolderofpath = arrayofpath[1] %}
{% if firstfolderofpath == null %}
  {% set background_image = pages.find('/headerimage').media.images|first %}
{% else %}
  {% set background_image = pages.find('/' ~ firstfolderofpath ~ '/headerimage').media.images|first %}
{% endif %}
{% if background_image %}
  {# If header image display above static navbar - hibbittsdesign.org#}
  <div class=\"myheader\" style=\"background-image: url({{ background_image.url }});\"></div>
  <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">
  {% else %}
    {% set background_image = pages.find('/headerimage').media.images|first %}
    {% if background_image %}
      <div class=\"myheader\" style=\"background-image: url({{ background_image.url }});\"></div>
      <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">
        {# added fixed - hibbittsdesign.org #}
      {% else %}
        {# If no header image then make navbar fixed - hibbittsdesign.org#}
        <body style=\"margin-top: 60px;\">
          <nav class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">
          {% endif %}
        {% endif %}
        {# added fixed - hibbittsdesign.org #}
        <div class=\"container\">
          <div class=\"navbar-header\">
            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">
              <span class=\"sr-only\">Toggle navigation</span>
              <span class=\"icon-bar\"></span>
              <span class=\"icon-bar\"></span>
              <span class=\"icon-bar\"></span>
            </button>
            <strong>
              <a class=\"navbar-brand\" href=\"{{ base_url == '' ? '/' : base_url_relative }}\">{{ config.site.title}}</a>
            </strong>
          </div>
          <div class=\"navbar-collapse collapse\">
            <ul class=\"nav navbar-nav navbar-right\">
              {% for page in pages.children.visible %}
                {# Remove active page visual indicator - hibbittsdesign.org#}
                {# {% set current_page = (page.active or page.activeChild) ? 'active' : '' %} #}
                {% if config.themes.bootstrap.dropdown.enabled and page.children.visible.count > 0 %}
                  <li class=\"dropdown {{ current_page }}\">
                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\">{{ page.menu }}
                      <span class=\"caret\"></span>
                    </a>
                    <ul class=\"dropdown-menu\" role=\"menu\">
                      {# Remove active page visual indicator #}
                      {# {% set current_parent = page.active ? 'active' : '' %} #}
                      {# Remove display of child parent in menu #}
                      {#  <li class=\"{{ current_parent }}\">
                        <a href=\"{{ page.url }}\">{{ page.menu }}</a>
                      </li>
                      <li class=\"divider\"></li>  #}
                      {% for child in page.children.visible %}
                        {% set current_child = (child.active or child.activeChild) ? 'active' : '' %}
                        <li class=\"{{ current_child }}\">
                          <a href=\"{{ child.url }}\">{{ child.menu }}</a>
                        </li>
                      {% endfor %}
                    </ul>
                  </li>
                {% else %}
                {% if config.site.hidehomemenulink and page.slug == 'home' %}
                  {# Supress home menu link - hibbittsdesign.org #}
                {% else %}
                    <li class=\"{{ current_page }}\">
                    <a href=\"{{ page.url }}\">{{ page.menu }}</a>
                  </li>
                  {% endif %}
                {% endif %}
              {% endfor %}
              {# Additional menu entries check and display - hibbittsdesign.org #}
              {% if config.site.displaymenuentries.enabled %}
                {% for mitem in site.menu %}
                  <li>
                    {# Added newwindow class - hibbittsdesign.org #}
                    <a class=\"newwindow\" href=\"{{ mitem.url }}\">
                      {% if mitem.icon %}
                        <i class=\"fa fa-{{ mitem.icon }}\"></i>
                        <span>{{ mitem.text }}</span>
                      {% else %}
                        {{ mitem.text }}
                      {% endif %}
                    </a>
                  </li>
                {% endfor %}
              {% endif %}
              {# Added Git repository edit link -  hibbittsdesign.org #}
              {% if config.site.gitrepo.editlinklocation == 'menu' and not (page.header.hide_git_sync_repo_link) and not (page.slug == 'pages') %}
                <li>
                  {% include 'partials/gitrepo_link.html.twig' %}
                </li>
              {% endif %}

              {% if config.plugins.login.enabled and grav.user.username %}
                <li>
                  <i class=\"fa fa-lock\"></i>
                  {% include 'partials/login-status.html.twig' %}</li>
              {% endif %}
            </ul>
          </div>
        </div>
      </nav>
", "partials/navigation.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\partials\\navigation.html.twig");
    }
}
