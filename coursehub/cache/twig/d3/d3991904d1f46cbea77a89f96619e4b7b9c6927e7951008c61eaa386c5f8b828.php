<?php

/* partials/base.html.twig */
class __TwigTemplate_93b2cf15b74e5dee6561b7737a908fd0a3a471630bf0efd41e5d3501a57f52c9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'head' => array($this, 'block_head'),
            'stylesheets' => array($this, 'block_stylesheets'),
            'javascripts' => array($this, 'block_javascripts'),
            'body_classes' => array($this, 'block_body_classes'),
            'header_navigation' => array($this, 'block_header_navigation'),
            'content' => array($this, 'block_content'),
            'pagination' => array($this, 'block_pagination'),
            'bottom' => array($this, 'block_bottom'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"en\">
  <head>
    ";
        // line 4
        $this->displayBlock('head', $context, $blocks);
        // line 39
        echo "  </head>

  <body id=\"top\" class=\"";
        // line 41
        $this->displayBlock('body_classes', $context, $blocks);
        echo "\">
    ";
        // line 42
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "langswitcher", array()), "enabled", array())) {
            // line 43
            echo "      ";
            $this->loadTemplate("partials/langswitcher.html.twig", "partials/base.html.twig", 43)->display($context);
            // line 44
            echo "    ";
        }
        // line 45
        echo "    ";
        // line 46
        echo "    ";
        if (( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method") &&  !$this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "chromeless", array()), "enabled", array()))) {
            // line 47
            echo "      ";
            $this->displayBlock('header_navigation', $context, $blocks);
            // line 50
            echo "    ";
        }
        // line 51
        echo "
    ";
        // line 52
        $this->displayBlock('content', $context, $blocks);
        // line 53
        echo "    ";
        $this->displayBlock('pagination', $context, $blocks);
        // line 54
        echo "
    ";
        // line 56
        echo "    ";
        if (( !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method") &&  !$this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "chromeless", array()), "enabled", array()))) {
            // line 57
            echo "      <div class=\"footer\">
        <div class=\"container\">
          ";
            // line 60
            echo "          <div class=\"up-arrow\">
            <a href=\"#\" id=\"top\" title=\"Top of Page\">
              <i class=\"fa fa-angle-up\" aria-hidden=\"true\"></i>
            </a>
          </div>
              <div class=\"text-muted\">
                ";
            // line 66
            if ((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "footer") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array()))) {
                // line 67
                echo "                  <p>";
                $this->loadTemplate("partials/gitrepo_link.html.twig", "partials/base.html.twig", 67)->display($context);
                echo "</p>
                ";
            }
            // line 69
            echo "                ";
            if (($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editthemelinklocation", array()) == "footer")) {
                // line 70
                echo "                  <p>";
                $this->loadTemplate("partials/gitrepo_theme_link.html.twig", "partials/base.html.twig", 70)->display($context);
                echo "</p>
                ";
            }
            // line 72
            echo "                <br>
                ";
            // line 73
            $context["content"] = $this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => "/footer"), "method"), "content", array());
            // line 74
            echo "                ";
            if (($context["content"] ?? null)) {
                // line 75
                echo "                  ";
                echo ($context["content"] ?? null);
                echo "
                ";
            }
            // line 77
            echo "                ";
            if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "cc_license", array()), "enabled", array())) {
                // line 78
                echo "                  <p>";
                $this->loadTemplate("partials/creative_commons_license.html.twig", "partials/base.html.twig", 78)->display($context);
                echo "</p>
                ";
            }
            // line 80
            echo "            </div>
        </div>
      </div>
    ";
        } else {
            // line 84
            echo "      <body style=\"margin-bottom: 60px;\">
    ";
        }
        // line 86
        echo "      ";
        $this->displayBlock('bottom', $context, $blocks);
        // line 87
        echo "
      ";
        // line 89
        echo "      ";
        $this->loadTemplate("partials/scripts.html.twig", "partials/base.html.twig", 89)->display($context);
        // line 90
        echo "
    </body>
  </html>
";
    }

    // line 4
    public function block_head($context, array $blocks = array())
    {
        // line 5
        echo "      <meta charset=\"utf-8\"/>
      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/>
      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>
      ";
        // line 8
        $this->loadTemplate("partials/metadata.html.twig", "partials/base.html.twig", 8)->display($context);
        // line 9
        echo "      <title>
        ";
        // line 10
        if ($this->getAttribute(($context["header"] ?? null), "title", array())) {
            echo twig_escape_filter($this->env, $this->getAttribute(($context["header"] ?? null), "title", array()), "html");
            echo "
          |
        ";
        }
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute(($context["site"] ?? null), "title", array()), "html");
        echo "</title>
      <link rel=\"icon\" type=\"image/png\" href=\"";
        // line 13
        echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->urlFunc("theme://images/favicon.png", true);
        echo "\"/>
      ";
        // line 14
        $this->displayBlock('stylesheets', $context, $blocks);
        // line 22
        echo "      ";
        echo $this->getAttribute(($context["assets"] ?? null), "css", array(), "method");
        echo "

      ";
        // line 24
        $this->displayBlock('javascripts', $context, $blocks);
        // line 36
        echo "      ";
        echo $this->getAttribute(($context["assets"] ?? null), "js", array(), "method");
        echo "

    ";
    }

    // line 14
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 15
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://css/bootstrap.css", 1 => 96), "method");
        // line 16
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://css/font-awesome.min.css", 1 => 99), "method");
        // line 17
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://css-compiled/theme.css", 1 => 97), "method");
        // line 18
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "addCss", array(0 => "theme://css/chbcustom.css", 1 => 99), "method");
        // line 19
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "addCss", array(0 => "theme://css/custom.css", 1 => 100), "method");
        // line 20
        echo "        ";
        // line 21
        echo "      ";
    }

    // line 24
    public function block_javascripts($context, array $blocks = array())
    {
        // line 25
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "jquery", 1 => 101), "method");
        // line 26
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://js/modernizr.custom.71422.js", 1 => 100), "method");
        // line 27
        echo "        ";
        $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://js/my.js", 1 => 99), "method");
        // line 28
        echo "        ";
        // line 29
        echo "
        ";
        // line 30
        if (((($this->getAttribute(($context["browser"] ?? null), "getBrowser", array()) == "msie") && ($this->getAttribute(($context["browser"] ?? null), "getVersion", array()) >= 8)) && ($this->getAttribute(($context["browser"] ?? null), "getVersion", array()) <= 9))) {
            // line 31
            echo "          ";
            $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "https://oss.maxcdn.com/respond/1.4.2/respond.min.js"), "method");
            // line 32
            echo "          ";
            $this->getAttribute(($context["assets"] ?? null), "add", array(0 => "theme://js/html5shiv-printshiv.min.js"), "method");
            // line 33
            echo "        ";
        }
        // line 34
        echo "
      ";
    }

    // line 41
    public function block_body_classes($context, array $blocks = array())
    {
        echo $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "body_classes", array());
    }

    // line 47
    public function block_header_navigation($context, array $blocks = array())
    {
        // line 48
        echo "        ";
        $this->loadTemplate("partials/navigation.html.twig", "partials/base.html.twig", 48)->display($context);
        // line 49
        echo "      ";
    }

    // line 52
    public function block_content($context, array $blocks = array())
    {
    }

    // line 53
    public function block_pagination($context, array $blocks = array())
    {
    }

    // line 86
    public function block_bottom($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "partials/base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  282 => 86,  277 => 53,  272 => 52,  268 => 49,  265 => 48,  262 => 47,  256 => 41,  251 => 34,  248 => 33,  245 => 32,  242 => 31,  240 => 30,  237 => 29,  235 => 28,  232 => 27,  229 => 26,  226 => 25,  223 => 24,  219 => 21,  217 => 20,  214 => 19,  211 => 18,  208 => 17,  205 => 16,  202 => 15,  199 => 14,  191 => 36,  189 => 24,  183 => 22,  181 => 14,  177 => 13,  173 => 12,  166 => 10,  163 => 9,  161 => 8,  156 => 5,  153 => 4,  146 => 90,  143 => 89,  140 => 87,  137 => 86,  133 => 84,  127 => 80,  121 => 78,  118 => 77,  112 => 75,  109 => 74,  107 => 73,  104 => 72,  98 => 70,  95 => 69,  89 => 67,  87 => 66,  79 => 60,  75 => 57,  72 => 56,  69 => 54,  66 => 53,  64 => 52,  61 => 51,  58 => 50,  55 => 47,  52 => 46,  50 => 45,  47 => 44,  44 => 43,  42 => 42,  38 => 41,  34 => 39,  32 => 4,  27 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!DOCTYPE html>
<html lang=\"en\">
  <head>
    {% block head %}
      <meta charset=\"utf-8\"/>
      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/>
      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>
      {% include 'partials/metadata.html.twig' %}
      <title>
        {% if header.title %}{{ header.title|e('html') }}
          |
        {% endif %}{{ site.title|e('html') }}</title>
      <link rel=\"icon\" type=\"image/png\" href=\"{{ url('theme://images/favicon.png', true) }}\"/>
      {% block stylesheets %}
        {% do assets.add('theme://css/bootstrap.css',96) %}
        {% do assets.add('theme://css/font-awesome.min.css',99) %}
        {% do assets.add('theme://css-compiled/theme.css',97) %}
        {% do assets.addCss('theme://css/chbcustom.css',99) %}
        {% do assets.addCss('theme://css/custom.css',100) %}
        {# added custom.css file pointer - hibbittsdesign.org #}
      {% endblock %}
      {{ assets.css() }}

      {% block javascripts %}
        {% do assets.add('jquery', 101) %}
        {% do assets.add('theme://js/modernizr.custom.71422.js', 100) %}
        {% do assets.add('theme://js/my.js', 99) %}
        {# load custom JS - hibbittsdesign.org #}

        {% if browser.getBrowser == 'msie' and browser.getVersion >= 8 and browser.getVersion <= 9 %}
          {% do assets.add('https://oss.maxcdn.com/respond/1.4.2/respond.min.js') %}
          {% do assets.add('theme://js/html5shiv-printshiv.min.js') %}
        {% endif %}

      {% endblock %}
      {{ assets.js() }}

    {% endblock head%}
  </head>

  <body id=\"top\" class=\"{% block body_classes %}{{ page.header.body_classes }}{% endblock %}\">
    {% if config.plugins.langswitcher.enabled %}
      {% include 'partials/langswitcher.html.twig' %}
    {% endif %}
    {# check content display flag - hibbittsdesign.org #}
    {% if not (grav.uri.param('chromeless')) and (not config.site.chromeless.enabled) %}
      {% block header_navigation %}
        {% include 'partials/navigation.html.twig' %}
      {% endblock %}
    {% endif %}

    {% block content %}{% endblock %}
    {% block pagination %}{% endblock %}

    {# check content display flag - hibbittsdesign.org #}
    {% if not (grav.uri.param('chromeless')) and (not config.site.chromeless.enabled) %}
      <div class=\"footer\">
        <div class=\"container\">
          {# added top of page navigation element - hibbittsdesign.org #}
          <div class=\"up-arrow\">
            <a href=\"#\" id=\"top\" title=\"Top of Page\">
              <i class=\"fa fa-angle-up\" aria-hidden=\"true\"></i>
            </a>
          </div>
              <div class=\"text-muted\">
                {% if config.site.gitrepo.editlinklocation == 'footer' and not (page.header.hide_git_sync_repo_link) %}
                  <p>{% include 'partials/gitrepo_link.html.twig' %}</p>
                {% endif %}
                {% if config.site.gitrepo.editthemelinklocation == 'footer' %}
                  <p>{% include 'partials/gitrepo_theme_link.html.twig' %}</p>
                {% endif %}
                <br>
                {% set content = pages.find('/footer').content %}
                {% if content %}
                  {{ content }}
                {% endif %}
                {% if config.site.cc_license.enabled %}
                  <p>{% include 'partials/creative_commons_license.html.twig' %}</p>
                {% endif %}
            </div>
        </div>
      </div>
    {% else %}
      <body style=\"margin-bottom: 60px;\">
    {% endif %}
      {% block bottom %}{% endblock %}

      {# added global scripts - hibbittsdesign.org #}
      {% include 'partials/scripts.html.twig' %}

    </body>
  </html>
", "partials/base.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\partials\\base.html.twig");
    }
}
