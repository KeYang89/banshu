<?php

/* modular/class-preparations.html.twig */
class __TwigTemplate_eb9a04c8c89541660d8800b068ff2712cf54a3deac8dd16b40b2babc9c4fad10 extends Twig_Template
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
        echo "<div class=\"list-item-modular\">

    ";
        // line 4
        $context["header_image"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image", array()), true);
        // line 5
        echo "    ";
        // line 6
        echo "    ";
        $context["header_image_width"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_width", array()), 930);
        // line 7
        echo "    ";
        $context["header_image_height"] = $this->env->getExtension('Grav\Common\Twig\TwigExtension')->definedDefaultFilter($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_height", array()), 310);
        // line 8
        echo "    ";
        $context["header_image_file"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_file", array());
        // line 9
        echo "
    <div class=\"list-blog-header\">

      ";
        // line 12
        if (($context["big_header"] ?? null)) {
            // line 13
            echo "        ";
            echo $this->getAttribute($this->getAttribute(twig_first($this->env, $this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array())), "cropResize", array(0 => 900, 1 => 600), "method"), "html", array(0 => "", 1 => "blog-header-image"), "method");
            echo "
      ";
        } else {
            // line 15
            echo "        ";
            if (($context["header_image"] ?? null)) {
                // line 16
                echo "        ";
                if (($context["header_image_file"] ?? null)) {
                    // line 17
                    echo "          ";
                    $context["header_image_media"] = $this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array()), ($context["header_image_file"] ?? null), array(), "array");
                    // line 18
                    echo "        ";
                } else {
                    // line 19
                    echo "          ";
                    $context["header_image_media"] = twig_first($this->env, $this->getAttribute($this->getAttribute(($context["page"] ?? null), "media", array()), "images", array()));
                    // line 20
                    echo "        ";
                }
                // line 21
                echo "
          ";
                // line 23
                echo "          ";
                if (($context["header_image_media"] ?? null)) {
                    // line 24
                    echo "            ";
                    if ($this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_credit", array())) {
                        // line 25
                        echo "              ";
                        $context["image_credit"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_credit", array());
                        // line 26
                        echo "              ";
                        $context["image_creditlink"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_creditlink", array());
                        // line 27
                        echo "              ";
                        $context["image_alt_text"] = $this->getAttribute($this->getAttribute(($context["page"] ?? null), "header", array()), "header_image_alt_text", array());
                        // line 28
                        echo "            ";
                    } elseif ($this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_credit", array())) {
                        // line 29
                        echo "              ";
                        $context["image_credit"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_credit", array());
                        // line 30
                        echo "              ";
                        $context["image_creditlink"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_creditlink", array());
                        // line 31
                        echo "              ";
                        $context["image_alt_text"] = $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "meta", array()), "header_image_alt_text", array());
                        // line 32
                        echo "            ";
                    }
                    // line 33
                    echo "            ";
                    if (($context["image_credit"] ?? null)) {
                        // line 34
                        echo "              <div class=\"image-credit-wrapper\"><span class=\"image-credit\">
                ";
                        // line 35
                        if (($context["image_creditlink"] ?? null)) {
                            // line 36
                            echo "                  Image: <a class=\"newwindow external-link\" href=\"";
                            echo ($context["image_creditlink"] ?? null);
                            echo "\">
                  ";
                            // line 37
                            echo ($context["image_credit"] ?? null);
                            echo "</a></span>
                  <img src=\"";
                            // line 38
                            echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                            echo "\" alt=\"";
                            echo ($context["image_alt_text"] ?? null);
                            echo "\"/>
                ";
                        } else {
                            // line 40
                            echo "                  Image: ";
                            echo ($context["image_credit"] ?? null);
                            echo "</span>
                  <img src=\"";
                            // line 41
                            echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                            echo "\" alt=\"";
                            echo ($context["image_alt_text"] ?? null);
                            echo "\"/>
                ";
                        }
                        // line 43
                        echo "              </div>
            ";
                    } else {
                        // line 45
                        echo "              <img src=\"";
                        echo $this->getAttribute($this->getAttribute(($context["header_image_media"] ?? null), "cropZoom", array(0 => ($context["header_image_width"] ?? null), 1 => ($context["header_image_height"] ?? null)), "method"), "url", array());
                        echo "\" alt=\"";
                        echo ($context["image_alt_text"] ?? null);
                        echo "\"/>
            ";
                    }
                    // line 47
                    echo "          ";
                }
                // line 48
                echo "
        ";
            }
            // line 50
            echo "      ";
        }
        // line 51
        echo "
    </div>

    <div class=\"modularitem\">
      ";
        // line 56
        echo "      ";
        // line 57
        echo "      <p>";
        echo $this->getAttribute(($context["page"] ?? null), "content", array());
        echo "</p>
      <hr>
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "modular/class-preparations.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  166 => 57,  164 => 56,  158 => 51,  155 => 50,  151 => 48,  148 => 47,  140 => 45,  136 => 43,  129 => 41,  124 => 40,  117 => 38,  113 => 37,  108 => 36,  106 => 35,  103 => 34,  100 => 33,  97 => 32,  94 => 31,  91 => 30,  88 => 29,  85 => 28,  82 => 27,  79 => 26,  76 => 25,  73 => 24,  70 => 23,  67 => 21,  64 => 20,  61 => 19,  58 => 18,  55 => 17,  52 => 16,  49 => 15,  43 => 13,  41 => 12,  36 => 9,  33 => 8,  30 => 7,  27 => 6,  25 => 5,  23 => 4,  19 => 2,);
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
<div class=\"list-item-modular\">

    {% set header_image = page.header.header_image|defined(true) %}
    {# changed default image width and height - hibbittsdesign.org #}
    {% set header_image_width  = page.header.header_image_width|defined(930) %}
    {% set header_image_height = page.header.header_image_height|defined(310) %}
    {% set header_image_file = page.header.header_image_file %}

    <div class=\"list-blog-header\">

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

    <div class=\"modularitem\">
      {# diable regular post handling - hibbittsdesign.org #}
      {# <h3>{{ page.title }}</h3> #}
      <p>{{ page.content }}</p>
      <hr>
    </div>
</div>
", "modular/class-preparations.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\course-hub-bootstrap\\templates\\modular\\class-preparations.html.twig");
    }
}
