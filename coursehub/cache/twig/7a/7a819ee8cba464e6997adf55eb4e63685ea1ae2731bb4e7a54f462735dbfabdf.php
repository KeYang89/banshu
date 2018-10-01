<?php

/* forms/fields/text/text.html.twig */
class __TwigTemplate_e847a692701da0d7106b824fbb05b902ada45893d0546a9602aaddc643412c90 extends Twig_Template
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
        $context["value"] = (((null === ($context["value"] ?? null))) ? ($this->getAttribute(($context["field"] ?? null), "default", array())) : (($context["value"] ?? null)));
        // line 2
        echo "
<div class=\"form-field\">

        <label class=\"control-label col-sm-2\">
            ";
        // line 6
        if ($this->getAttribute(($context["field"] ?? null), "help", array())) {
            // line 7
            echo "            <span class=\"tooltip\" data-asTooltip-position=\"w\" title=\"";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["field"] ?? null), "help", array()));
            echo "\">";
            echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate((($this->getAttribute(($context["field"] ?? null), "label", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["field"] ?? null), "label", array()), twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))) : (twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))));
            echo "</span>
            ";
        } else {
            // line 9
            echo "            ";
            echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->translate((($this->getAttribute(($context["field"] ?? null), "label", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["field"] ?? null), "label", array()), twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))) : (twig_capitalize_string_filter($this->env, $this->getAttribute(($context["field"] ?? null), "name", array())))));
            echo "
            ";
        }
        // line 11
        echo "            ";
        echo ((twig_in_filter($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "required", array()), array(0 => "on", 1 => "true", 2 => 1))) ? ("<span class=\"required\">*</span>") : (""));
        echo "
        </label>
        <div class=\"col-sm-10\">
            <input  type=\"text\"
                    class=\"form-control\"
                    name=\"";
        // line 16
        echo $this->env->getExtension('Grav\Common\Twig\TwigExtension')->fieldNameFilter((($context["scope"] ?? null) . $this->getAttribute(($context["field"] ?? null), "name", array())));
        echo "\"
                    value=\"";
        // line 17
        echo twig_join_filter(($context["value"] ?? null), ", ");
        echo "\"
                    ";
        // line 18
        if ($this->getAttribute(($context["field"] ?? null), "placeholder", array())) {
            echo "placeholder=\"";
            echo $this->getAttribute(($context["field"] ?? null), "placeholder", array());
            echo "\"";
        }
        // line 19
        echo "                    ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "autofocus", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "autofocus=\"autofocus\"";
        }
        // line 20
        echo "                    ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "novalidate", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "novalidate=\"novalidate\"";
        }
        // line 21
        echo "                    ";
        if (twig_in_filter($this->getAttribute(($context["field"] ?? null), "autocomplete", array()), array(0 => "on", 1 => "off"))) {
            echo "autocomplete=\"";
            echo $this->getAttribute(($context["field"] ?? null), "autocomplete", array());
            echo "\"";
        }
        // line 22
        echo "                    ";
        if (twig_in_filter($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "required", array()), array(0 => "on", 1 => "true", 2 => 1))) {
            echo "required=\"required\"";
        }
        // line 23
        echo "                    ";
        if ($this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "pattern", array())) {
            echo "pattern=\"";
            echo $this->getAttribute($this->getAttribute(($context["field"] ?? null), "validate", array()), "pattern", array());
            echo "\"";
        }
        // line 24
        echo "            />
        </div>

</div>
";
    }

    public function getTemplateName()
    {
        return "forms/fields/text/text.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  95 => 24,  88 => 23,  83 => 22,  76 => 21,  71 => 20,  66 => 19,  60 => 18,  56 => 17,  52 => 16,  43 => 11,  37 => 9,  29 => 7,  27 => 6,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% set value = (value is null ? field.default : value) %}

<div class=\"form-field\">

        <label class=\"control-label col-sm-2\">
            {% if field.help %}
            <span class=\"tooltip\" data-asTooltip-position=\"w\" title=\"{{ field.help|e }}\">{{ field.label|default(field.name|capitalize)|t }}</span>
            {% else %}
            {{ field.label|default(field.name|capitalize)|t }}
            {% endif %}
            {{ field.validate.required in ['on', 'true', 1] ? '<span class=\"required\">*</span>' }}
        </label>
        <div class=\"col-sm-10\">
            <input  type=\"text\"
                    class=\"form-control\"
                    name=\"{{ (scope ~ field.name)|fieldName }}\"
                    value=\"{{ value|join(', ') }}\"
                    {% if field.placeholder %}placeholder=\"{{ field.placeholder }}\"{% endif %}
                    {% if field.autofocus in ['on', 'true', 1] %}autofocus=\"autofocus\"{% endif %}
                    {% if field.novalidate in ['on', 'true', 1] %}novalidate=\"novalidate\"{% endif %}
                    {% if field.autocomplete in ['on', 'off'] %}autocomplete=\"{{ field.autocomplete }}\"{% endif %}
                    {% if field.validate.required in ['on', 'true', 1] %}required=\"required\"{% endif %}
                    {% if field.validate.pattern %}pattern=\"{{ field.validate.pattern }}\"{% endif %}
            />
        </div>

</div>
", "forms/fields/text/text.html.twig", "C:\\xampp\\htdocs\\seniorknows\\new_seniorknows_site_by_KeYang\\coursehub\\user\\themes\\bootstrap\\templates\\forms\\fields\\text\\text.html.twig");
    }
}
