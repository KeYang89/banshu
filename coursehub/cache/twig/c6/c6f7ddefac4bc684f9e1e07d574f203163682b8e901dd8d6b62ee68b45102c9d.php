<?php

/* partials/blog_item.html.twig */
class __TwigTemplate_560da9545de9bf26a46012bd0b3478fc9966771cef1a698751e5cf42fc17bc86 extends Twig_Template
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
        echo "<div class=\"list-item\">

  ";
        // line 3
        $context["header_image"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image", array()), true);
        // line 4
        echo "  ";
        // line 5
        echo "  ";
        $context["header_image_width"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_width", array()), 930);
        // line 6
        echo "  ";
        $context["header_image_height"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_height", array()), 310);
        // line 7
        echo "  ";
        $context["header_image_file"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_file", array());
        // line 8
        echo "
  <div class=\"list-blog-header\">

    ";
        // line 11
        if ($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "link", array())) {
            // line 12
            echo "      <h3>
        ";
            // line 13
            if ( !($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "continue_link", array()) === false)) {
                // line 14
                echo "          <a href=\"";
                echo $this->getAttribute(($context["page"] ?? null), "url", array());
                echo "\">
            <i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i>
          </a>
        ";
            }
            // line 18
            echo "        <a href=\"";
            echo $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "link", array());
            echo "\">";
            echo $this->getAttribute(($context["page"] ?? null), "title", array());
            echo "</a>
      </h3>
    ";
        } else {
            // line 21
            echo "      ";
            // line 22
            echo "      ";
            if ($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "icon", array())) {
                // line 23
                echo "            ";
                $context["titleicon"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "icon", array());
                // line 24
                echo "          ";
            } else {
                // line 25
                echo "            ";
                if ($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "icon", array()), "post", array())) {
                    // line 26
                    echo "              ";
                    $context["titleicon"] = $this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "icon", array()), "post", array());
                    // line 27
                    echo "            ";
                }
                // line 28
                echo "      ";
            }
            // line 29
            echo "      ";
            if (($context["titleicon"] ?? null)) {
                // line 30
                echo "        <h3 class=\"p-name\"><a href=\"";
                echo $this->getAttribute(($context["page"] ?? null), "url", array());
                echo "\" class=\"u-url\"><i class=\"fa fa-";
                echo ($context["titleicon"] ?? null);
                echo "\" aria-hidden=\"true\"></i> ";
                echo $this->getAttribute(($context["page"] ?? null), "title", array());
                echo "</a></h3>
      ";
            } else {
                // line 32
                echo "        <h3 class=\"p-name\"><a href=\"";
                echo $this->getAttribute(($context["page"] ?? null), "url", array());
                echo "\" class=\"u-url\">";
                echo $this->getAttribute(($context["page"] ?? null), "title", array());
                echo "</a></h3>
      ";
            }
            // line 34
            echo "    ";
        }
        // line 35
        echo "
    ";
        // line 37
        echo "    ";
        // line 42
        echo "    ";
        // line 43
        echo "    ";
        // line 52
        echo "    ";
        if (($context["big_header"] ?? null)) {
            // line 53
            echo "      ";
            echo $this->getAttribute($this->getAttribute(twig_first($this->env, $this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array())), "cropResize", array(0 => 900, 1 => 600), "method"), "html", array(0 => "", 1 => "blog-header-image"), "method");
            echo "
    ";
        } else {
            // line 55
            echo "      ";
            if (($context["header_image"] ?? null)) {
                // line 56
                echo "      ";
                if (($context["header_image_file"] ?? null)) {
                    // line 57
                    echo "        ";
                    $context["header_image_media"] = $this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array()), ($context["header_image_file"] ?? null), array(), "array");
                    // line 58
                    echo "      ";
                } else {
                    // line 59
                    echo "        ";
                    $context["header_image_media"] = twig_first($this->env, $this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array()));
                    // line 60
                    echo "      ";
                }
                // line 61
                echo "
      ";
                // line 63
                echo "      ";
                if (($context["header_image_media"] ?? null)) {
                    // line 64
                    echo "        ";
                    if ($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_credit", array())) {
                        // line 65
                        echo "          ";
                        $context["image_credit"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_credit", array());
                        // line 66
                        echo "          ";
                        $context["image_creditlink"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_creditlink", array());
                        // line 67
                        echo "          ";
                        $context["image_alt_text"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_alt_text", array());
                        // line 68
                        echo "        ";
                    } elseif ($this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_credit", array())) {
                        // line 69
                        echo "          ";
                        $context["image_credit"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_credit", array());
                        // line 70
                        echo "          ";
                        $context["image_creditlink"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_creditlink", array());
                        // line 71
                        echo "          ";
                        $context["image_alt_text"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_alt_text", array());
                        // line 72
                        echo "        ";
                    }
                    // line 73
                    echo "        ";
                    if (($context["image_credit"] ?? null)) {
                        // line 74
                        echo "          <div class=\"image-credit-wrapper\"><span class=\"image-credit\">
            ";
                        // line 75
                        if (($context["image_creditlink"] ?? null)) {
                            // line 76
                            echo "              Image: <a class=\"newwindow external-link\" href=\"";
                            echo ($context["image_creditlink"] ?? null);
                            echo "\">
              ";
                            // line 77
                            echo ($context["image_credit"] ?? null);
                            echo "</a></span>
              <img src=\"";
                            // line 78
                            echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                            echo "\" alt=\"";
                            echo ($context["image_alt_text"] ?? null);
                            echo "\"/>
            ";
                        } else {
                            // line 80
                            echo "              Image: ";
                            echo ($context["image_credit"] ?? null);
                            echo "</span>
              <img src=\"";
                            // line 81
                            echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                            echo "\" alt=\"";
                            echo ($context["image_alt_text"] ?? null);
                            echo "\"/>
            ";
                        }
                        // line 83
                        echo "          </div>
        ";
                    } else {
                        // line 85
                        echo "          <img src=\"";
                        echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                        echo "\" alt=\"";
                        echo ($context["image_alt_text"] ?? null);
                        echo "\"/>
        ";
                    }
                    // line 87
                    echo "      ";
                }
                // line 88
                echo "
      ";
            }
            // line 90
            echo "    ";
        }
        // line 91
        echo "  </div>

  <div class=\"list-blog-padding\">

    ";
        // line 95
        if (($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "continue_link", array()) === false)) {
            // line 96
            echo "      <p>";
            echo $this->getAttribute(($context["page"] ?? null), "content", array());
            echo "</p>
      ";
            // line 97
            if ( !($context["truncate"] ?? null)) {
                // line 98
                echo "        <hr>
        ";
                // line 100
                echo "        ";
                if (((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "page") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array())) &&  !($this->getAttribute(($context["page"] ?? null), "slug", array()) == "pages"))) {
                    // line 101
                    echo "          <br><br>
          ";
                    // line 102
                    $this->loadTemplate("partials/gitrepo_link_note.html.twig", "partials/blog_item.html.twig", 102)->display($context);
                    // line 103
                    echo "          <br>
        ";
                }
                // line 105
                echo "        ";
                $context["show_prev_next"] = true;
                // line 106
                echo "      ";
            } else {
                // line 107
                echo "      <hr>
      ";
            }
            // line 109
            echo "    ";
        } elseif ((($context["truncate"] ?? null) && ($this->getAttribute(($context["page"] ?? null), "summary", array()) != $this->getAttribute(($context["page"] ?? null), "content", array())))) {
            // line 110
            echo "      ";
            // line 111
            echo "      <p>";
            echo $this->getAttribute(($context["page"] ?? null), "summary", array());
            echo "</p>
      <p>
        <a href=\"";
            // line 113
            echo $this->getAttribute(($context["page"] ?? null), "url", array());
            echo "\">View all of
          ";
            // line 114
            echo $this->getAttribute(($context["page"] ?? null), "title", array());
            echo "
          <i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>
        </a>
      </p>
      <hr>
    ";
        } elseif (        // line 119
($context["truncate"] ?? null)) {
            // line 120
            echo "      ";
            if (($this->getAttribute(($context["page"] ?? null), "summary", array()) != $this->getAttribute(($context["page"] ?? null), "content", array()))) {
                // line 121
                echo "        <p>";
                echo \Grav\Common\Utils::truncate($this->getAttribute(($context["page"] ?? null), "content", array()), 550);
                echo "</p>
      ";
            } else {
                // line 123
                echo "        <p>";
                echo $this->getAttribute(($context["page"] ?? null), "content", array());
                echo "</p>
      ";
            }
            // line 125
            echo "      <p>
        <a href=\"";
            // line 126
            echo $this->getAttribute(($context["page"] ?? null), "url", array());
            echo "\">Continue Reading...</a>
      </p>
    ";
        } else {
            // line 129
            echo "      ";
            // line 130
            echo "      ";
            $context["content"] = twig_slice($this->env, $this->getAttribute(($context["page"] ?? null), "content", array()), twig_length_filter($this->env, $this->getAttribute(($context["page"] ?? null), "summary", array())));
            // line 131
            echo "      ";
            // line 132
            echo "      <p>";
            echo ($context["content"] ?? null);
            echo "</p>
        <hr>
        ";
            // line 134
            if (((($this->getAttribute($this->getAttribute($this->getAttribute(($context["config"] ?? null), "site", array()), "gitrepo", array()), "editlinklocation", array()) == "page") &&  !$this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "hide_git_sync_repo_link", array())) &&  !($this->getAttribute(($context["page"] ?? null), "slug", array()) == "pages"))) {
                // line 135
                echo "          <br>
          ";
                // line 136
                $this->loadTemplate("partials/gitrepo_link_note.html.twig", "partials/blog_item.html.twig", 136)->display($context);
                // line 137
                echo "          <br>
        ";
            }
            // line 139
            echo "      ";
            $context["show_prev_next"] = true;
            // line 140
            echo "    ";
        }
        // line 141
        echo "
    ";
        // line 143
        echo "    ";
        if ((($context["show_prev_next"] ?? null) &&  !$this->getAttribute($this->getAttribute(($context["grav"] ?? null), "uri", array()), "param", array(0 => "chromeless"), "method"))) {
            // line 144
            echo "
      <p class=\"text-left\">
        ";
            // line 146
            if ( !$this->getAttribute(($context["page"] ?? null), "isLast", array())) {
                // line 147
                echo "          <a class=\"btn btn-default\" href=\"";
                echo $this->getAttribute($this->getAttribute(($context["page"] ?? null), "prevSibling", array()), "url", array());
                echo "\">
            <i class=\"fa fa-chevron-left\" aria-hidden=\"true\"></i>
            Previous
          </a>
        ";
            }
            // line 152
            echo "
        ";
            // line 153
            if ( !$this->getAttribute(($context["page"] ?? null), "isFirst", array())) {
                // line 154
                echo "          <a class=\"btn btn-default\" href=\"";
                echo $this->getAttribute($this->getAttribute(($context["page"] ?? null), "nextSibling", array()), "url", array());
                echo "\">Next
            <i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>
          </a>
        ";
            }
            // line 158
            echo "
      </p>
    ";
        }
        // line 161
        echo "
  </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "partials/blog_item.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  397 => 161,  392 => 158,  384 => 154,  382 => 153,  379 => 152,  370 => 147,  368 => 146,  364 => 144,  361 => 143,  358 => 141,  355 => 140,  352 => 139,  348 => 137,  346 => 136,  343 => 135,  341 => 134,  335 => 132,  333 => 131,  330 => 130,  328 => 129,  322 => 126,  319 => 125,  313 => 123,  307 => 121,  304 => 120,  302 => 119,  294 => 114,  290 => 113,  284 => 111,  282 => 110,  279 => 109,  275 => 107,  272 => 106,  269 => 105,  265 => 103,  263 => 102,  260 => 101,  257 => 100,  254 => 98,  252 => 97,  247 => 96,  245 => 95,  239 => 91,  236 => 90,  232 => 88,  229 => 87,  221 => 85,  217 => 83,  210 => 81,  205 => 80,  198 => 78,  194 => 77,  189 => 76,  187 => 75,  184 => 74,  181 => 73,  178 => 72,  175 => 71,  172 => 70,  169 => 69,  166 => 68,  163 => 67,  160 => 66,  157 => 65,  154 => 64,  151 => 63,  148 => 61,  145 => 60,  142 => 59,  139 => 58,  136 => 57,  133 => 56,  130 => 55,  124 => 53,  121 => 52,  119 => 43,  117 => 42,  115 => 37,  112 => 35,  109 => 34,  101 => 32,  91 => 30,  88 => 29,  85 => 28,  82 => 27,  79 => 26,  76 => 25,  73 => 24,  70 => 23,  67 => 22,  65 => 21,  56 => 18,  48 => 14,  46 => 13,  43 => 12,  41 => 11,  36 => 8,  33 => 7,  30 => 6,  27 => 5,  25 => 4,  23 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"list-item\">

  {% set header_image = page.header.header_image|defined(true) %}
  {# changed default image width and height - hibbittsdesign.org #}
  {% set header_image_width  = page.header.header_image_width|defined(930) %}
  {% set header_image_height = page.header.header_image_height|defined(310) %}
  {% set header_image_file = page.header.header_image_file %}

  <div class=\"list-blog-header\">

    {% if page.header.link %}
      <h3>
        {% if page.header.continue_link is not sameas(false) %}
          <a href=\"{{ page.url }}\">
            <i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i>
          </a>
        {% endif %}
        <a href=\"{{ page.header.link }}\">{{ page.title }}</a>
      </h3>
    {% else %}
      {# added page title icon - hibbittsdesign.org #}
      {% if page.header.icon %}
            {% set titleicon = page.header.icon %}
          {% else %}
            {% if config.site.icon.post %}
              {% set titleicon = config.site.icon.post %}
            {% endif %}
      {% endif %}
      {% if titleicon %}
        <h3 class=\"p-name\"><a href=\"{{ page.url }}\" class=\"u-url\"><i class=\"fa fa-{{ titleicon }}\" aria-hidden=\"true\"></i> {{ page.title }}</a></h3>
      {% else %}
        <h3 class=\"p-name\"><a href=\"{{ page.url }}\" class=\"u-url\">{{ page.title }}</a></h3>
      {% endif %}
    {% endif %}

    {# remove date display - hibbittsdesign.org #}
    {#
        <span class=\"list-blog-date\">
            <i class=\"fa fa-calendar\"></i> <span>{{ page.date|date(\"F j, Y, g:i a\") }}</span>
        </span>
        #}
    {# remove tags display - hibbittsdesign.org #}
    {#
        {% if page.taxonomy.tag %}
        <span class=\"tags pull-right\">
            {% for tag in page.taxonomy.tag %}
            <a class=\"label label-primary\" href=\"{{ base_url }}/tag{{ config.system.param_sep }}{{ tag }}\">{{ tag }}</a>
            {% endfor %}
        </span>
        {% endif %}
        #}
    {% if big_header %}
      {{ page.media.images|first.cropResize(900,600).html('','blog-header-image') }}
    {% else %}
      {% if header_image %}
      {% if header_image_file %}
        {% set header_image_media = page.media.images[header_image_file] %}
      {% else %}
        {% set header_image_media = page.media.images|first %}
      {% endif %}

      {# support image credit tag with optional image meta file - hibbittsdesign.org #}
      {% if header_image_media %}
        {% if page.header.header_image_credit %}
          {% set image_credit = page.header.header_image_credit %}
          {% set image_creditlink = page.header.header_image_creditlink %}
          {% set image_alt_text = page.header.header_image_alt_text %}
        {% elseif header_image_media.meta.header_image_credit  %}
          {% set image_credit = header_image_media.meta.header_image_credit %}
          {% set image_creditlink = header_image_media.meta.header_image_creditlink %}
          {% set image_alt_text = header_image_media.meta.header_image_alt_text %}
        {% endif %}
        {% if image_credit %}
          <div class=\"image-credit-wrapper\"><span class=\"image-credit\">
            {% if image_creditlink %}
              Image: <a class=\"newwindow external-link\" href=\"{{ image_creditlink }}\">
              {{ image_credit }}</a></span>
              <img src=\"{{ header_image_media.cropZoom(header_image_width, header_image_height).url }}\" alt=\"{{ image_alt_text }}\"/>
            {% else %}
              Image: {{ image_credit }}</span>
              <img src=\"{{ header_image_media.cropZoom(header_image_width, header_image_height).url }}\" alt=\"{{ image_alt_text }}\"/>
            {% endif %}
          </div>
        {% else %}
          <img src=\"{{ header_image_media.cropZoom(header_image_width, header_image_height).url }}\" alt=\"{{ image_alt_text }}\"/>
        {% endif %}
      {% endif %}

      {% endif %}
    {% endif %}
  </div>

  <div class=\"list-blog-padding\">

    {% if page.header.continue_link is sameas(false) %}
      <p>{{ page.content }}</p>
      {% if not truncate %}
        <hr>
        {# added Git repository edit link -  hibbittsdesign.org #}
        {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) and not (page.slug == 'pages') %}
          <br><br>
          {% include 'partials/gitrepo_link_note.html.twig' %}
          <br>
        {% endif %}
        {% set show_prev_next = true %}
      {% else %}
      <hr>
      {% endif %}
    {% elseif truncate and page.summary != page.content %}
      {# added summary flag and title icon - hibbittsdesign.org #}
      <p>{{ page.summary }}</p>
      <p>
        <a href=\"{{ page.url }}\">View all of
          {{ page.title }}
          <i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>
        </a>
      </p>
      <hr>
    {% elseif truncate %}
      {% if page.summary != page.content %}
        <p>{{ page.content|truncate(550) }}</p>
      {% else %}
        <p>{{ page.content }}</p>
      {% endif %}
      <p>
        <a href=\"{{ page.url }}\">Continue Reading...</a>
      </p>
    {% else %}
      {# added summary flag and Git repository edit link -  hibbittsdesign.org #}
      {% set content = page.content|slice(page.summary|length) %}
      {# do not display summary on actual page - hibbittsdesign.org #}
      <p>{{ content }}</p>
        <hr>
        {% if config.site.gitrepo.editlinklocation == 'page' and not (page.header.hide_git_sync_repo_link) and not (page.slug == 'pages') %}
          <br>
          {% include 'partials/gitrepo_link_note.html.twig' %}
          <br>
        {% endif %}
      {% set show_prev_next = true %}
    {% endif %}

    {# added check for content display flag - hibbittsdesign.org #}
    {% if show_prev_next and not (grav.uri.param('chromeless')) %}

      <p class=\"text-left\">
        {% if not page.isLast %}
          <a class=\"btn btn-default\" href=\"{{ page.prevSibling.url }}\">
            <i class=\"fa fa-chevron-left\" aria-hidden=\"true\"></i>
            Previous
          </a>
        {% endif %}

        {% if not page.isFirst %}
          <a class=\"btn btn-default\" href=\"{{ page.nextSibling.url }}\">Next
            <i class=\"fa fa-chevron-right\" aria-hidden=\"true\"></i>
          </a>
        {% endif %}

      </p>
    {% endif %}

  </div>
</div>
", "partials/blog_item.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\partials\\blog_item.html.twig");
    }
}
