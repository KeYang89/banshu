<?php

/* partials/sidebar.html.twig */
class __TwigTemplate_8aaa74da43a426087538988f1eb690b090048c11f84d34a5d1318a8fcb75c65d extends Twig_Template
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
        $context["feed_url"] = (((($this->getAttribute(($context["blog"] ?? null), "url", array()) == "/") || ($this->getAttribute(($context["blog"] ?? null), "url", array()) == ($context["base_url_relative"] ?? null)))) ? (((($context["base_url_relative"] ?? null) . "/") . $this->getAttribute(($context["blog"] ?? null), "slug", array()))) : ($this->getAttribute(($context["blog"] ?? null), "url", array())));
        // line 2
        $context["new_base_url"] = ((($this->getAttribute(($context["blog"] ?? null), "url", array()) == "/")) ? ("") : ($this->getAttribute(($context["blog"] ?? null), "url", array())));
        // line 3
        echo "
";
        // line 4
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "simplesearch", array()), "enabled", array())) {
            // line 5
            echo "  <div class=\"sidebar-content\">
    <h5>Quick Search</h5>
    ";
            // line 7
            $this->loadTemplate("partials/simplesearch_searchbox.html.twig", "partials/sidebar.html.twig", 7)->display($context);
            // line 8
            echo "  </div>
";
        }
        // line 10
        echo "
";
        // line 12
        $context["arrayofpath"] = twig_split_filter($this->env, $this->getAttribute(($context["uri"] ?? null), "path", array()), "/");
        // line 13
        $context["firstfolderofpath"] = $this->getAttribute(($context["arrayofpath"] ?? null), 1, array(), "array");
        // line 14
        if ((($context["firstfolderofpath"] ?? null) == null)) {
            // line 15
            echo "  ";
            $context["arrayofpath"] = twig_split_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "system", array()), "home", array()), "alias", array()), "/");
            // line 16
            echo "  ";
            $context["firstfolderofpath"] = $this->getAttribute(($context["arrayofpath"] ?? null), 1, array(), "array");
        }
        // line 18
        $context["content"] = $this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => (("/" . ($context["firstfolderofpath"] ?? null)) . "/sidebar")), "method"), "content", array());
        // line 19
        if (twig_test_empty(($context["content"] ?? null))) {
            // line 20
            echo "  ";
            $context["content"] = $this->getAttribute($this->getAttribute(($context["pages"] ?? null), "find", array(0 => "/sidebar"), "method"), "content", array());
        }
        // line 22
        echo "<div class=\"sidebar-content\">
  ";
        // line 23
        echo ($context["content"] ?? null);
        echo "
</div>
";
        // line 25
        if (($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "relatedpages", array()), "enabled", array()) && (twig_length_filter($this->env, ($context["related_pages"] ?? null)) > 0))) {
            // line 26
            echo "  <h5>Related Posts</h5>
  ";
            // line 27
            $this->loadTemplate("partials/relatedpages.html.twig", "partials/sidebar.html.twig", 27)->display($context);
        }
        // line 29
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "taxonomylist", array()), "enabled", array())) {
            // line 30
            echo "  <div class=\"sidebar-content\">
    <h5>Popular Tags</h5>
    ";
            // line 32
            $this->loadTemplate("partials/taxonomylist.html.twig", "partials/sidebar.html.twig", 32)->display(array_merge($context, array("base_url" => ($context["new_base_url"] ?? null), "taxonomy" => "tag")));
            // line 33
            echo "  </div>
";
        }
        // line 35
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "archives", array()), "enabled", array())) {
            // line 36
            echo "  <div class=\"sidebar-content\">
    <h5>Archives</h5>
    ";
            // line 38
            $this->loadTemplate("partials/archives.html.twig", "partials/sidebar.html.twig", 38)->display(array_merge($context, array("base_url" => ($context["new_base_url"] ?? null))));
            // line 39
            echo "  </div>
";
        }
        // line 41
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "twittertimeline", array()), "enabled", array())) {
            // line 42
            echo "  <div class=\"sidebar-content\">
    <h5>Twitter</h5>
    <a class=\"twitter-timeline\" data-width=\"500\" data-height= ";
            // line 44
            echo $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "twittertimeline", array()), "height", array());
            echo " data-chrome=\"noscrollbar\" href=\"";
            echo $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "twittertimeline", array()), "url", array());
            echo "\">";
            echo $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "twittertimeline", array()), "text", array());
            echo "</a> <script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>
  </div>
";
        }
        // line 47
        if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "plugins", array()), "feed", array()), "enabled", array())) {
            // line 48
            echo "  ";
            if (($this->getAttribute(($context["page"] ?? null), "template", array()) == "blog")) {
                // line 49
                echo "    <div class=\"sidebar-content\">
      <h5>Subscribe</h5>
      <div class=\"btn-group\">
        <a class=\"btn btn-warning\" href=\"";
                // line 52
                echo ($context["feed_url"] ?? null);
                echo ".atom\">
          <i class=\"fa fa-rss-square\"></i>
          Atom 1.0</a>
        <a class=\"btn btn-warning\" href=\"";
                // line 55
                echo ($context["feed_url"] ?? null);
                echo ".rss\">
          <i class=\"fa fa-rss-square\"></i>
          RSS</a>
      </div>
    </div>
  ";
            }
        }
    }

    public function getTemplateName()
    {
        return "partials/sidebar.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  134 => 55,  128 => 52,  123 => 49,  120 => 48,  118 => 47,  108 => 44,  104 => 42,  102 => 41,  98 => 39,  96 => 38,  92 => 36,  90 => 35,  86 => 33,  84 => 32,  80 => 30,  78 => 29,  75 => 27,  72 => 26,  70 => 25,  65 => 23,  62 => 22,  58 => 20,  56 => 19,  54 => 18,  50 => 16,  47 => 15,  45 => 14,  43 => 13,  41 => 12,  38 => 10,  34 => 8,  32 => 7,  28 => 5,  26 => 4,  23 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% set feed_url = blog.url == '/' or blog.url == base_url_relative ? (base_url_relative~'/'~blog.slug) : blog.url %}
{% set new_base_url = blog.url == '/' ? '' : blog.url %}

{% if config.plugins.simplesearch.enabled %}
  <div class=\"sidebar-content\">
    <h5>Quick Search</h5>
    {% include 'partials/simplesearch_searchbox.html.twig' %}
  </div>
{% endif %}

{# multi-course hub compatibility - hibbittsdesign.org #}
{% set arrayofpath = uri.path|split('/') %}
{% set firstfolderofpath = arrayofpath[1] %}
{% if firstfolderofpath == null %}
  {% set arrayofpath = config.system.home.alias|split('/') %}
  {% set firstfolderofpath = arrayofpath[1] %}
{% endif %}
{% set content = pages.find('/' ~ firstfolderofpath ~ '/sidebar').content %}
{% if content is empty %}
  {% set content = pages.find('/sidebar').content %}
{% endif %}
<div class=\"sidebar-content\">
  {{ content }}
</div>
{% if config.plugins.relatedpages.enabled and related_pages|length > 0 %}
  <h5>Related Posts</h5>
  {% include 'partials/relatedpages.html.twig' %}
{% endif %}
{% if config.plugins.taxonomylist.enabled %}
  <div class=\"sidebar-content\">
    <h5>Popular Tags</h5>
    {% include 'partials/taxonomylist.html.twig' with {'base_url':new_base_url, 'taxonomy':'tag'} %}
  </div>
{% endif %}
{% if config.plugins.archives.enabled %}
  <div class=\"sidebar-content\">
    <h5>Archives</h5>
    {% include 'partials/archives.html.twig' with {'base_url':new_base_url} %}
  </div>
{% endif %}
{% if config.site.twittertimeline.enabled %}
  <div class=\"sidebar-content\">
    <h5>Twitter</h5>
    <a class=\"twitter-timeline\" data-width=\"500\" data-height= {{ config.site.twittertimeline.height }} data-chrome=\"noscrollbar\" href=\"{{ config.site.twittertimeline.url }}\">{{config.site.twittertimeline.text}}</a> <script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>
  </div>
{% endif %}
{% if config.plugins.feed.enabled %}
  {% if page.template == 'blog' %}
    <div class=\"sidebar-content\">
      <h5>Subscribe</h5>
      <div class=\"btn-group\">
        <a class=\"btn btn-warning\" href=\"{{ feed_url }}.atom\">
          <i class=\"fa fa-rss-square\"></i>
          Atom 1.0</a>
        <a class=\"btn btn-warning\" href=\"{{ feed_url }}.rss\">
          <i class=\"fa fa-rss-square\"></i>
          RSS</a>
      </div>
    </div>
  {% endif %}
{% endif %}
", "partials/sidebar.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\partials\\sidebar.html.twig");
    }
}
